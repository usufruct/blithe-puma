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
           srand(999) # page returns randon content
           visit '/herman'
           expect(page).to have_text('the threatening wind forbade.')
       end
   end
end
