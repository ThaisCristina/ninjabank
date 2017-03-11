require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
  :browser => :chrome,
  :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
  'chromeOptions' => {
  'args' => [ "--start-maximized" ]
  }
  )
  )
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://ninjabank.herokuapp.com'
end

Capybara.default_max_wait_time = 5