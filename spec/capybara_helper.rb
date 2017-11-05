require 'capybara/rspec'
require './lib/simple_app'

Capybara.app = SimpleApp.new

Capybara.configure do |config|
    puts "printing"
    puts config.inspect
    puts config.app
end
