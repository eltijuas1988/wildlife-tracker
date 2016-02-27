require 'rails_helper'

RSpec.feature "WildlifeTrackers", type: :feature do

  describe "As a ranger" do

    it "I can go to a home page" do
      visit '/'
      expect(page).to have_content("Welcome to the home page")
    end

    it "I can create a species and save it in the database from the home page" do
      visit '/'
      fill_in 'Name', with: 'Deer'
      click_button 'Save'
      expect(Species.first).to be_a (Species)
      #need to match the recently created model species to the db
    end

  end


end
