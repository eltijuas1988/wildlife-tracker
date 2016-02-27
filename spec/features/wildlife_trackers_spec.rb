require 'rails_helper'

RSpec.feature "WildlifeTrackers", type: :feature do

  describe "As a ranger" do

    it "I can go to a home page" do
      visit '/'
      expect(page).to have_content("Welcome to the home page")
    end

    it "I can create a species and save it in the database from the home page" do
      create_animal('Deer')
      expect(Species.first).to be_a (Species)
      #need to match the recently created model species to the db
    end

    it "I can list all species in a database" do
      create_animal('Deer')
      create_animal('Bear')
      expect(Species.first.name).to eq('Deer')
      expect(Species.second.name).to eq('Bear')
    end

    def create_animal(species)
      visit '/'
      fill_in 'Name', with: species
      click_button 'Save'
    end

  end


end
