require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'Going to website' do
    Steps 'Being on the homepage' do
      Given 'I am on the homepage' do
        visit '/'
      end
      Then 'I can see a listing of apartments' do
        expect(page).to have_content("Listing")
      end
      And 'I can see two street designations, city, postal code, state, country' do
        expect(page).to have_content("Name")
        expect(page).to have_content("Time")
        expect(page).to have_content("Phone")
      end
    Steps 'go to owner page'
    
    end
  end
end
