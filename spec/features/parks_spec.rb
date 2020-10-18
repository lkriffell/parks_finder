require 'rails_helper'

RSpec.describe 'Parks' do
  it 'can show all parks from a state when a state is selected' do
    parks = ParkFacade.parks_in_state('Al')
    total_parks = ParkFacade.total_parks_in_state('Al')
    visit root_path

    click_button 'Find Parks'

    expect(total_parks).to eq('12')
    expect(parks.size).to eq(12)
    expect(page).to have_content('Total Parks: 12')

    expect(page).to have_content('Birmingham Civil Rights National Monument')
    expect(parks.first.full_name).to eq('Birmingham Civil Rights National Monument')
    expect(parks.first.park_hours.first).to eq(["wednesday", "10:00AM - 5:00PM"])

    expect(parks.last.full_name).to eq('Tuskegee Institute National Historic Site')
    expect(page).to have_content('Tuskegee Institute National Historic Site')
  end
end
