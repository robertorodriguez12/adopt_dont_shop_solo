require 'rails_helper'

RSpec.describe 'add new pet' do

   it 'fill form, submit and display added pet' do
     @shelter1 = Shelter.create(name: 'Puppy Pawz',
                                address: '123 Main Street',
                                city: 'Denver',
                                state: 'CO',
                                zip: '80221')

    visit "/shelters/#{@shelter1.id}/pets/"

    click_on "Create New Pet"

    expect(current_path).to eq("/shelters/#{@shelter1.id}/pets/new")

    fill_in "pet[name]", with: 'Walter'
    fill_in "pet[approximate_age]", with: '5'
    fill_in "pet[sex]", with: 'male'
    fill_in "pet[image]", with:"../../assets/images/pup1.jpg"
    click_on 'Add Pet'

    expect(current_path).to eq("/shelters/#{@shelter1.id}/pets")

    click_on "Walter"
    expect(page).to have_content('Walter')
    expect(page).to have_content('5')
    expect(page).to have_content('Sex: male')
  end

end
