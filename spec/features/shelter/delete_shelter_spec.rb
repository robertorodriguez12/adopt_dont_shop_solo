require 'rails_helper'

RSpec.describe 'Delete Shelter' do
  it 'should see a link to delete shelter' do
    shelter1 = Shelter.create(name:"Puppy Paws", address: "123 Main Street", city: "Denver", state: "CO", zip: "11111")

    visit "/shelters/#{shelter1.id}"

    click_button "Delete Shelter"

    expect(current_path).to eq("/shelters")

  end
end
