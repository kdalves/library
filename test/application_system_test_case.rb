# test/application_system_test_case.rb

require "test_helper"

if ENV["CI"]
  # No CI: evita configurar Selenium
  class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    # System tests são ignorados por completo
    def self.test(*); end
  end
else
  # Localmente: permite system tests com Selenium
  require "capybara/rails"
  require "capybara/minitest"
  require "webdrivers"

  Webdrivers::Chromedriver.required_version = "138.0.7204.94"

  class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    driven_by :selenium, using: :headless_chrome do |options|
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-dev-shm-usage"
      options.add_argument "--disable-gpu"
      options.add_argument "--window-size=1400,1400"
    end
  end
end
