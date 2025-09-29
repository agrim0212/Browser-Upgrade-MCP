require_relative 'component_manager'
require_relative '../helpers/utils'
require_relative '../models/device_state'
require_relative 'browser_upgrade_manager'
require_relative '../constants'

# Class used for managing the version of Chrome on an Android Device
# Can be used to check the installed version, compare with the desired version and install if needed
class ChromeManager < ComponentManager

  def self.run_from_bash
    device_id = ARGV[0].to_s.strip
    command = ARGV[1].to_s.strip

    logger = Logger.new($stdout)

    chrome_manager = ChromeManager.new(device_id, logger)
    output = chrome_manager.send(command)
    ExitFile.write(output) unless output.nil?
  rescue StandardError => e
    ExitFile.write(e.message)
    raise e
  end

  def initialize(device_id, logger, logger_params = {}) # rubocop:todo Lint/MissingSuper
    logger_params[:component] = self.class.to_s

    @logger = logger
    @logger_params = logger_params
    @device_obj = BrowserStack::AndroidDevice.new(device_id, self.class.to_s, logger, logger_params)
    @browser_upgrade_manager = BrowserUpgradeManager.new(device_id, logger, 'chrome', logger_params)
    @apk = AndroidToolkit::APK.new(apk_path, aapt_path: BrowserStack::AAPT)
    @apk_installer = ApkInstaller.new(@apk, device_id, logger, logger_params)
    @adb = AndroidToolkit::ADB.new(udid: device_id, path: BrowserStack::ADB)
    @device_state = DeviceState.new(device_id)
  end

  def installed_version
    latest_version = @apk_installer.latest_installed_version(BrowserStack::BROWSER_PACKAGE_MAP['chrome'])
    log(:info, "Latest installed Chrome version: #{latest_version}")
    latest_version
  rescue RuntimeError => e
    case e.message
    when /not installed/
      log(:warn, "Chrome is not installed")
      nil
    end
  end

  def desired_version
    result = @browser_upgrade_manager.get_browser_version_and_variant('chrome')
    @desired_version ||= Gem::Version.new(result["version"])

    log(:info, "Desired Chrome version is #{@desired_version}")
    @desired_version
  end

  def install_required?
    return false if persist_browser_version?(@device_state)
    return false if @device_obj.exclude_and_uninstall_google_apps
    return false if @apk_installer.factory_version_newer?(BrowserStack::BROWSER_PACKAGE_MAP['chrome'], desired_version)
    return false if installed_version == desired_version

    log(:warn, "Chrome install required")
    true
  end

  def factory_version_updated?
    unless @apk_installer.factory_version_newer?(BrowserStack::BROWSER_PACKAGE_MAP['chrome'], desired_version)
      return false # we only want to return true if factory version is newer than desired
    end

    lowest_version = @apk_installer.lowest_installed_version(BrowserStack::BROWSER_PACKAGE_MAP['chrome'])
    installed_version > lowest_version
  end

  def restart_default_appium
    # Restart default appium server
    # More info: https://browserstack.atlassian.net/browse/MOBPL-3151?focusedCommentId=719012
    log(:info, "Restarting appium server")
    should_wait_for_appium = "create_kill_and_wait"
    selenium_port = @device_obj.selenium_port
    chrome_driver_port = @device_obj.chrome_driver_port
    android_bootstrap_port = @device_obj.android_bootstrap_port
    default_appium_version = get_default_appium_version(@device_obj.os_version)
    system(
      "sudo bash #{BrowserStack::BS_DIR}/mobile/android/helpers/create_appium_service.sh #{@device_obj.id} " \
      "#{selenium_port} #{chrome_driver_port} #{android_bootstrap_port} #{default_appium_version} " \
      "#{should_wait_for_appium}"
    )
  end

  def ensure_install
    unless install_required?
      log(:info, "Desired Chrome version #{desired_version} is already installed!")
      return
    end
    error = false

    begin
      log(:info, "Ensuring Chrome install for apk: #{apk_path}")

      # Oppo devices need to be installed with --user 0
      # More info: https://browserstack.atlassian.net/browse/MOB-9237
      should_use_zero_install = @device_obj.pm_clear_command_fails?

      @apk_installer.ensure_install(uninstall_before_installing: false, user_zero_install: should_use_zero_install)
      restart_default_appium
    rescue StandardError => e
      # Don't use ensure block here: it mixes up the order of rescue block execution
      log(:info, "Ensure install failed to install chrome")
      error = e
    end

    log(:info, "Removing chrome backup")
    FileUtils.rm_rf(backup_apk_path)

    # This is required in v108 More Details: AAP-7735
    @adb.shell("am start -n com.android.chrome/com.google.android.apps.chrome.Main")
    @adb.shell("input keyevent 3") #goto home screen

    raise error if error
  end

  private

  def apk_path
    @apk_path ||= if use_backup_version?(backup_apk_path)
                    backup_apk_path
                  else
                    chrome_apk_path
                  end
  end

  def chrome_apk_path
    return @path unless @path.nil?

    path  = "#{BrowserStack::DEPS_DIR}/chrome/v#{desired_major_version}/chrome_#{desired_version}_#{desired_variant}"
    @path = @device_obj.os_version.to_i < 5 ? "#{path}.apk" : path
  end

  def backup_apk_path
    "/tmp/#{BrowserStack::BROWSER_PACKAGE_MAP['chrome']}-#{@device_obj.id}"
  end

  # TODO: Remove once MOB-7017 is resolved.
  # At the end of each session we pull chrome from the device and save
  # it in the /tmp/ directory. We then install chrome from that saved backup
  # in the next session. This is so we can gradually accumulate additional
  # language split apks that might have been downloaded during sessions
  # for use in subsequent sessions.
  def use_backup_version?(backup_apk_path)
    return false unless File.exist?(backup_apk_path)

    log(:info, "Found Chrome backup")

    begin
      backup_apk = AndroidToolkit::APK.new(backup_apk_path, aapt_path: BrowserStack::AAPT)
      chrome_apk = AndroidToolkit::APK.new(chrome_apk_path, aapt_path: BrowserStack::AAPT)

      backup_apk.combined_version == chrome_apk.combined_version
    rescue StandardError => e
      log :error, "Not using chrome backup due to error: #{e.message} #{e.backtrace.join("\n")}"
      FileUtils.rm_rf(backup_apk_path)
      false
    end
  end

  def desired_major_version
    desired_version.segments.first.to_s # '65.0.1' => '65'
  end

  def desired_variant
    result = @browser_upgrade_manager.get_browser_version_and_variant('chrome')
    @desired_variant ||= result["variant"]

    log(:info, "Desired Chrome variant is #{@desired_variant}")
    @desired_variant
  end

  def log(level, msg)
    formatted_msg = "#{self.class} #{@device_obj.id} #{msg}"
    if @logger.instance_of?(Logger)
      @logger.send(level.to_sym, formatted_msg)
    else
      @logger.send(level.to_sym, formatted_msg, @logger_params)
    end
  end
end

ChromeManager.run_from_bash if $PROGRAM_NAME == __FILE__
