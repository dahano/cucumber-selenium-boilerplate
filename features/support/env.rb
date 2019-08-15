require 'selenium-webdriver'
require 'rspec'
require 'rest-client'
require 'cucumber'
require 'rake'

def initialize_wd_session(brs_hash = {})
  @browser = Selenium::WebDriver.for(brs_hash['browser'], driver_path: brs_hash['path'])
  @browser.manage.window.resize_to(brs_hash['window_x'], brs_hash['window_y'])
end