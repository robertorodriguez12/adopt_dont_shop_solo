require 'rails_helper'

RSpec.describe 'Edit Shelter' do
  it 'should see a link to edit shelter' do
    shelter1 = Shelter.create(name:"Puppy Paws", address: "123 Main Street", city: "Denver", state: "CO", zip: "11111")

    visit "/shelters/#{shelter1.id}"

    click_link "Update Shelter"

    expect(current_path).to eq("/shelters/#{shelter1.id}/edit")

    fill_in "shelter[name]", with:"Potato"
    fill_in "shelter[address]", with:"123 Main Street"
    fill_in "shelter[city]", with:"Denver"
    fill_in "shelter[state]", with:"CO"
    fill_in "shelter[zip]", with:"12345"
    click_on "Update Shelter"
  end
end
