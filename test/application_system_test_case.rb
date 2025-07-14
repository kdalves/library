require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [ 1400, 1400 ]

  unless ENV["CI"]
    require "webdrivers"
    Webdrivers::Chromedriver.required_version = "138.0.7204.94"
  end
end
