# frozen_string_literal: true

require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include RSpec::Matchers
World(Page)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login'
  config.default_max_wait_time = 8
end
