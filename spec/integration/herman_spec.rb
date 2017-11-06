require 'spec_helper'
require 'capybara_helper' 

RSpec.feature "does it even work?" do
    it "it does" do
        expect(true).to eq(true)
    end
end

RSpec.feature "route: /herman" do
    before(:each) do
        Capybara.current_driver = :headless_chrome
    end

    after(:each) do
        Capybara.use_default_driver
    end

    describe "loading the page" do
        it "loads" do
            puts "see js: #{Capybara.javascript_driver}"
            puts "see: #{Capybara.current_driver}"
            srand(999) # page returns randon content
            visit '/herman'
            expect(page).to have_text('the threatening wind forbade.')
        end
    end
end
