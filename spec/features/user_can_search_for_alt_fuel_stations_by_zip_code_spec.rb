require 'rails_helper'

RSpec.describe 'User Can Search by Zip Code', type: :feature do
  describe 'As a visitor' do
    describe 'when I visit /' do
      describe 'and I fill in the search form and click on Locate' do
        before :each do
          visit '/'
          fill_in 'q', with: '80206'
          click_on "Locate"
        end
        it 'should take me to /search' do

          expect(current_path).to eq(search_path)
        end

        it 'I should see the total results of the stations that match my query' do
          expect(page).to have_content("15 Results")

        end

        it 'I should see a list of the 15 closest stations within 5 miles sorted by distance' do

          within(first(".station")) do
            expect(page).to have_content('Name: PUBLIC STATIONS')
            expect(page).to have_content('Address: 2951-2985 E 3rd Ave')
            expect(page).to have_content('Fuel Types: Electric')
            expect(page).to have_content('Distance: 0.62888 miles')
            expect(page).to have_content('Access Times: 24 hours daily')
          end
        end

        it 'should only show stations that are Electric and Propane' do
        end

        it 'should only show the stations that are public, and not private, planned or temporarily unavailable' do
        end

        it 'should show the station Name, Address, Fuel Types, Distance, and Access Times' do
        end

      end
    end
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80206 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see the total results of the stations that match my query.
# Then I should see a list of the 15 closest stations within 5 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And the stations should only be public, and not private, planned or temporarily unavailable.
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
