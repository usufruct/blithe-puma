require 'capybara/rspec'
require './lib/simple_app'

Capybara.app = SimpleApp.new
