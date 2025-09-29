require 'logger'
require 'json'
require 'android_toolkit'
require_relative '../helpers/utils'
require '/usr/local/.browserstack/mobile/common/push_to_zombie'
require_relative '../exit_file'

class BrowserUpgradeManager

  def self.run_from_bash
    device_id = ARGV[0].to_s.strip
    command = ARGV[1].to_s.strip
    browser_name = ARGV[2].to_s.strip

    logger = Logger.new($stdout)

    checker = BrowserUpgradeManager.new(device_id, logger, browser_name)
    checker.send(command)
  rescue StandardError => e
    ExitFile.write(e.message)
    raise e
  end

  # Load the configuration
  def initialize(device_id, logger, browser_name, logger_params = {})
    logger_params[:component] = self.class.to_s

    @logger = logger
    @logger_params = logger_params
    @device_obj = BrowserStack::AndroidDevice.new(device_id, self.class.to_s, logger, logger_params)
    @adb = AndroidToolkit::ADB.new(udid: device_id, path: BrowserStack::ADB)
    @config = JSON.parse(File.read("config/#{browser_name}_config.json"))

    sort_browser_upgrade_rules(browser_name)
  end

  #Get Google chrome driver path according to the chrome version or device
  def handle_chrome_driver_path
    action = get_browser_version_and_variant("chromedriver")
    path = action["path"]
    # Write the path to exit file so bash can read it
    ExitFile.write(path)
    path
  rescue StandardError => e
    zombie_push(
      'android',
      'error_getting_chrome_driver_path',
      e.message.to_s,
      'chrome',
      {}.to_json,
      @device_obj&.id
    )
    raise "Error getting Chrome driver path: #{e.message}"
  end

  # Get Chrome version and variant using switch-case pattern
  def get_browser_version_and_variant(browser_name)
    # Find the matching rule

    rule = find_matching_rule(browser_name)
    rule["action"]
  rescue StandardError => e
    # Handle the case where no matching rule is found
    zombie_push(
      'android',
      'error_finding_version_and_variant',
      e.message.to_s,
      browser_name,
      {}.to_json,
      @device_obj&.id
    )
    raise "Error finding matching rule: #{e.message}"

  end

  # Find the first matching rule for a browser
  def find_matching_rule(browser_type)
    rules = @config[browser_type]["rules"]
    # Iterate through rules (already sorted by priority)
    rules.each do |rule|
      return rule if rule_matches?(rule)
    end
    # Should never get here if there's a default rule
    zombie_push(
      'android',
      'rule_not_found_error_browser_upgrade_manager',
      "No matching rule found and no default rule configured",
      browser_type,
      {}.to_json,
      @device_obj&.id
    )
    raise "No matching rule found and no default rule configured"
  end

  # Check if a rule matches the device
  def rule_matches?(rule)
    # Default rule always matches
    return true if rule["conditions"]["default"]

    # Custom function handling (switch case for custom functions)
    if rule["conditions"]["custom_function"]
      case rule["conditions"]["custom_function"]
      when "uses_chrome_v114"
        return true if uses_chrome_v114(
          @device_obj.model,
          @device_obj.os_version.to_i,
          @device_obj.id,
          @device_obj.dedicated_device?
        )
      end
      # Add other custom functions as needed using when clause
      return false
    end

    return false if check_os_version_conditions(rule) == false
    return false if check_device_model_conditions(rule) == false
    return false if check_device_id_conditions(rule) == false
    # Check Chrome version conditions for getting chromedriver path
    return false if check_chrome_version_conditions(rule) == false

    # Check dedicated device condition
    dedicated_rule = rule["conditions"]["dedicated_device"]
    return false if dedicated_rule && (@device_obj.dedicated_device? != dedicated_rule)

    return false if check_manufacturer_conditions(rule) == false

    # All conditions passed
    true
  end

  def check_chrome_version_conditions(rule)
    if rule["conditions"]["chrome_version"]
      chromedriver_conditions = rule["conditions"]["chrome_version"]
      chrm_vr = @adb.shell("dumpsys package com.android.chrome 2>/dev/null | grep versionName |head -1|cut -d '=' -f2")
      @logger.info("Chrome version that we get via upgrade manager : #{chrm_vr}")
      chromedriver_conditions.each do |operator, value|
        case operator
        when "lt"
          return false if chrm_vr.to_i >= value
        when "lte"
          return false if chrm_vr.to_i > value
        when "gt"
          return false if chrm_vr.to_i <= value
        when "gte"
          return false if chrm_vr.to_i < value
        when "eq"
          return false if chrm_vr.to_i != value
        when "neq"
          return false if chrm_vr.to_i == value
        end
      end
    end
  end

  def check_manufacturer_conditions(rule)
    if rule["conditions"]["manufacturer"]
      manufacturer_conditions = rule["conditions"]["manufacturer"]
      manufacturer_conditions.each do |operator, value|
        case operator
        when "in"
          return false unless value.include?(@device_obj.manufacturer)
        when "not_in"
          return false if value.include?(@device_obj.manufacturer)
        when "regex"
          return false unless @device_obj.manufacturer.match?(Regexp.new(value))
        end
      end
    end
  end

  def check_device_id_conditions(rule)
    if rule["conditions"]["device_id"]
      device_id_conditions = rule["conditions"]["device_id"]
      device_id_conditions.each do |operator, value|
        case operator
        when "in"
          return false unless value.include?(@device_obj.id)
        when "not_in"
          return false if value.include?(@device_obj.id)
        when "regex"
          return false unless @device_obj.id.match?(Regexp.new(value))
        end
      end
    end
  end

  def check_os_version_conditions(rule)
    if rule["conditions"]["os_version"]
      os_version_conditions = rule["conditions"]["os_version"]
      os_version_conditions.each do |operator, value|
        case operator
        when "lt"
          return false if @device_obj.os_version.to_i >= value
        when "lte"
          return false if @device_obj.os_version.to_i > value
        when "gt"
          return false if @device_obj.os_version.to_i <= value
        when "gte"
          return false if @device_obj.os_version.to_i < value
        when "eq"
          return false if @device_obj.os_version.to_i != value
        when "neq"
          return false if @device_obj.os_version.to_i == value
        end
      end
    end
  end

  def check_device_model_conditions(rule)
    if rule["conditions"]["device_model"]
      device_model_conditions = rule["conditions"]["device_model"]
      device_model_conditions.each do |operator, value|
        case operator
        when "in"
          return false unless value.include?(@device_obj.model)
        when "not_in"
          return false if value.include?(@device_obj.model)
        when "regex"
          return false unless @device_obj.model.match?(Regexp.new(value))
        end
      end
    end
  end

  def sort_browser_upgrade_rules(browser_name)

    # Normalize browser name for consistency
    browser_name = if browser_name == "chrome"
                     ["chrome", "webview", "trichrome"]
                   else
                     [browser_name]
                   end

    # Sort rules for each browser type
    browser_name.each do |name|
      next unless @config[name]["rules"].is_a?(Array)

      # Sort the rules array
      @config[name]["rules"].sort! do |a, b|
        cond_a = a["conditions"] || {}
        cond_b = b["conditions"] || {}

        # Special case for default rule (should always be last)
        if cond_a["default"] == true
          1
        elsif cond_b["default"] == true
          -1
        else
          has_device_id_a = !cond_a["device_id"].nil?
          has_device_id_b = !cond_b["device_id"].nil?
          if has_device_id_a != has_device_id_b
            has_device_id_a ? -1 : 1
          elsif !cond_a["custom_function"].nil? != !cond_b["custom_function"].nil?
            !cond_a["custom_function"].nil? ? -1 : 1
          elsif !cond_a["is_dedicated_device"].nil? != !cond_b["is_dedicated_device"].nil?
            !cond_a["is_dedicated_device"].nil? ? -1 : 1
          elsif !cond_a["device_model"].nil? != !cond_b["device_model"].nil?
            !cond_a["device_model"].nil? ? -1 : 1
          elsif !cond_a["manufacturer"].nil? != !cond_b["manufacturer"].nil?
            !cond_a["manufacturer"].nil? ? -1 : 1
          elsif !cond_a["os_version"].nil? != !cond_b["os_version"].nil?
            !cond_a["os_version"].nil? ? -1 : 1
          else
            0
          end
        end
      end
    end
  end
end

BrowserUpgradeManager.run_from_bash if $PROGRAM_NAME == __FILE__