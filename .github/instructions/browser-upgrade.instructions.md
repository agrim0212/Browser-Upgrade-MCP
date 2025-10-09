---
applyTo: '**'
---
{
  "version": 1,
  "instructions": [
    {
      "name": "add-browser-upgrade-rule",
      "description": "Add a new browser upgrade rule to the specified <browser_name>_config.json (chrome).",
      "resources": [
        "<browser_name>_config.json",
        "browser_upgrade_manager.rb"
      ],
      "steps": [
        "Check out the latest main branch and create a new feature branch: <unique_id>-<browser_name>_upgrade_<version>.",
        "For Upgrading Chrome, webview, trichrome and chromedriver rules get added in chrome_config.json, For remaining all browsers rules get added in their respective <browser_name>_config files.",
        "Parse the user's natural-language request and extract: browser_name, device_model(s), manufacturer(s), device_id(s), os_version conditions, chrome_version conditions, custom_function, dedicated_device flag, and action (version + variant + optional path).",
        "Understand that all fields in conditions are optional except at least one of device_model, manufacturer, device_id, os_version, chrome_version, custom_function, dedicated_device, or default must be specified.",
        "Recoganize that action must include at least version or variant, and path is optional.",
        "All the fields inside the conditions structure are enforced as `and` conditions. whereas multiple device_model or manufacturer values are treated as `or` conditions.",
        "Open the target config file: <browser_name>_config.json. If <browser_name> is 'chrome', also consider applying rules to 'webview' and 'trichrome' when requested.",
        "Validate the requested rule fields the instructions available : [handling-os-version-condition, handling-device_model-condition, handling-manufacturer-condition].",
        "Validate that there cannot be two rules with default condition for a browser.",
        "Check all the rules with same action and ensure no two rules have identical conditions. Update and merge them into a single rule with combined device_model/manufacturers lists.",
        "Generate a descriptive rule id using the pattern: `<lower_snake_browser>_<device_name_or_manufacturer>_<os_or_chrome>-v<short>`. Examples: 'pixel8_android14_chrome138' or 'sm_s926b_android15'. Ensure unique id (append numerical suffix when conflict).",
        "Check existing conditions inside each rule for an exact match on device_id or device_model + os_version or os_version or device_model (exact same conditions). If an identical rule exists, update its action with the new version/variant (and path if provided).",
        "If no exact match exists, insert the new rule into the rules array ensuring sorting by priority (device_id > custom_function > dedicated_device > device_model > manufacturer > os_version > default).",
        "Run JSON validation using `jq` or Ruby's JSON parser (e.g., `ruby -r json -e 'JSON.parse(File.read(\"<browser_name>_config.json\"))'`) and fail with a human-readable message if invalid.",
        "Run a local config sanity check: run `ruby browser_upgrade_manager.rb <example_device_id> handle_chrome_driver_path <browser_name>` (or other safe dry-run command) when an example device id is available in docs; capture and surface errors.",
        "Produce a short summary of the change: what file changed, rule id, conditions, and action.",
        "Commit the change as: 'config: add <browser_name> upgrade rule <rule_id> for <conditions_summary>'.",
        "Run under PR automation, open a draft PR and include the summary in the PR description."
      ]
    },
    {
      "name": "handling-os-version-condition",
      "description": "Guidance on specifying os_version conditions in rules.",
      "resources": [
        "<browser_name>_config.json",
        "browser_upgrade_manager.rb"
      ],
      "steps": [
        "os_version conditions can be specified using operators: lt, lte, gt, gte, eq, neq.",
        "For range conditions (lt, lte, gt, gte), ensure the version format matches the device's reported os_version (e.g., '14', '14.1', '14.1.2').",
        "structure for os_version condition is: \"os_version\": { \"<operator>\": \"<value>\" } or \"os_version\": { \"<operator>\": \"<value>\" , \"<operator2>\": \"<value2>\"} and so on. Hence, There can be multiple operator and value pairs inside os_version condition.",
        "For equality (eq) or inequality (neq), specify the exact version string.",
        "Update rules to use range operators instead of multiple eq conditions when possible (e.g., use gte 14 and lt 15 instead of eq 14, eq 14.1, eq 14.2, etc.).",
        "Test complex os_version conditions locally using the Ruby manager with simulated device data to ensure correct rule matching."
      ]
    },
    {
      "name": "handling-device_model-condition",
      "description": "Guidance on specifying device_model conditions in rules.",
      "resources": [
        "<browser_name>_config.json",
        "browser_upgrade_manager.rb"
      ],
      "steps": [
        "device_model conditions can be specified using operators: in, not_in, regex.",
        "For inclusion (in) or exclusion (not_in), provide an array of model strings.",
        "For regex, provide a valid regular expression pattern that matches the desired device_model formats.",
        "structure for device_model condition is: \"device_model\": { \"<operator>\": [\"<value>\"] } or \"device_model\": { \"<operator>\": [\"<value>\"] , \"<operator2>\": [\"<value2>\"]} or \"device_model\": { \"<operator>\": [\"<value1>\", \"<value2>\"]} and so on. Hence, There can be multiple operator and value pairs inside device_model condition and multiple values inside an operator too.",
        "Avoid overly broad regex patterns that could unintentionally match many models.",
        "Update rules to use in/not_in with multiple values instead of multiple eq conditions when possible (e.g., use in [\"model1\", \"model2\"]).",
        "Test complex device_model conditions locally using the Ruby manager with simulated device data to ensure correct rule matching."
      ]
    },
    {
      "name": "handling-manufacturer-condition",
      "description": "Guidance on specifying manufacturer conditions in rules.",
      "resources": [
        "<browser_name>_config.json",
        "browser_upgrade_manager.rb"
      ],
      "steps": [
        "manufacturer conditions can be specified using operators: in, not_in, regex.",
        "For inclusion (in) or exclusion (not_in), provide an array of manufacturer strings.",
        "For regex, provide a valid regular expression pattern that matches the desired manufacturer formats.",
        "structure for manufacturer condition is: \"manufacturer\": { \"<operator>\": [\"<value>\"] } or \"manufacturer\": { \"<operator>\": [\"<value>\"] , \"<operator2>\": [\"<value2>\"]} or \"manufacturer\": { \"<operator>\": [\"<value1>\", \"<value2>\"]} and so on. Hence, There can be multiple operator and value pairs inside manufacturer condition and multiple values inside an operator too.",
        "Avoid overly broad regex patterns that could unintentionally match many manufacturers.",
        "Update rules to use in/not_in with multiple values instead of multiple eq conditions when possible (e.g., use in [\"model1\", \"model2\"]).",
        "Test complex manufacturer conditions locally using the Ruby manager with simulated device data to ensure correct rule matching."
      ]
    },
    {
      "name": "validate-config",
      "description": "Validate <browser_name>_config.json against the canonical schema and the manager's expectations.",
      "resources": [
        "schema/browser_rule_schema.json",
        "browser_upgrade_manager.rb"
      ],
      "steps": [
        "Open <browser_name>_config.json and schema/browser_rule_schema.json.",
        "Check that every rule has: id (string), conditions (object), and action (object).",
        "Verify recognized condition keys: default, custom_function, dedicated_device, device_id, device_model, manufacturer, os_version, chrome_version.",
        "For each operator inside conditions, ensure operators are one of the supported set (lt, lte, gt, gte, eq, neq, in, not_in, regex).",
        "Ensure at least one default rule exists per browser to prevent runtime failures. If missing, add a TODO default rule with action set to a known safe version.",
        "Return a validation report listing errors or 'OK' if none found."
      ]
    },
    {
      "name": "run-local-sanity-check",
      "description": "Run a non-destructive local test using the Ruby manager to ensure no runtime exceptions for common code paths.",
      "resources": [
        "browser_upgrade_manager.rb",
        "<browser_name>_config.json"
      ],
      "steps": [
        "If an example device id is available in docs, run: `ruby browser_upgrade_manager.rb <example_device_id> handle_chrome_driver_path chrome` and capture output. Otherwise run a non-ADB path that invokes find_matching_rule for a simulated device (if test helpers exist).",
        "If the Ruby script raises, copy the stderr and present the failing rule or JSON path to the user.",
        "If passing, include the output path or version written to the ExitFile as proof."
      ]
    },
    {
      "name": "summarize-config",
      "description": "Produce a human-readable summary of active rules grouped by device_model, OS ranges, manufacturer, and default rules.",
      "resources": [
        "<browser_name>_config.json"
      ],
      "steps": [
        "Load the config file and group rules by device_model keys when present, then by manufacturer then by os_version then default.",
        "For each group include rule id, conditions summary, and action summary (version/variant/path).",
        "Highlight device-specific overrides and any missing default rules.",
        "Return a short markdown summary suitable for PR description."
      ]
    }
  ]
}
