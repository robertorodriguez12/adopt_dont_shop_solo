require 'rails_helper'

RSpec.describe 'New Shelter Form' do
  it 'see a link to create a new shelter' do
    visit "/shelters"

    click_link "New Shelter"

    expect(current_path).to eq('/shelters/new')

    fill_in "shelter[name]", with:"Potato"
    fill_in "shelter[address]", with:"123 Main Street"
    fill_in "shelter[city]", with:"Denver"
    fill_in "shelter[state]", with:"CO"
    fill_in "shelter[zip]", with:"12345"
    click_on "Create Shelter"

    expect(current_path).to eq('/shelters')
    expect(page).to have_content("Potato")
  end
end
