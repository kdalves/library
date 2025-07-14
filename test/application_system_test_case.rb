require "test_helper"
require "capybara/rails"
require "capybara/minitest"

if ENV["CI"]
  require "webdrivers"
  Webdrivers::Chromedriver.required_version = "114.0.5735.90"

  class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    driven_by :selenium, using: :headless_chrome do |options|
      options.add_argument("--no-sandbox")
      options.add_argument("--disable-dev-shm-usage")
      options.add_argument("--disable-gpu")
      options.add_argument("--window-size=1400,1400")
    end
  end
else
  class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
    driven_by :rack_test
  end
end
