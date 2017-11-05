require 'spec_helper'
require 'capybara_helper' 

RSpec.feature "does it even work?" do
    it "it does" do
        expect(true).to eq(true)
    end
end

RSpec.feature "route: /herman" do
   describe "loading the page" do
       it "loads" do
           visit '/herman'
           expect(page.text.length).to be > 0
       end
   end
end
