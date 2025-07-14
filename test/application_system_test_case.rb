require "test_helper"
require "capybara/rails"
require "capybara/minitest"

if ENV["CI"]
  class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    driven_by :selenium, using: :headless_chrome do |options|
      options.add_argument("--no-sandbox")
      options.add_argument("--disable-dev-shm-usage")
      options.add_argument("--disable-gpu")
      options.add_argument("--window-size=1400,1400")
    end
  end
else
  require "webdrivers"
  Webdrivers::Chromedriver.required_version = "138.0.7204.94" rescue nil

  class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    driven_by :selenium_chrome_headless
  end
end
