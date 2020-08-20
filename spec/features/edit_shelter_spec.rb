require 'rails_helper'

RSpec.describe 'Edit Shelter' do
  it 'should see a link to edit shelter' do
    shelter1 = Shelter.create(name:"Puppy Paws", address: "123 Main Street", city: "Denver", state: "CO", zip: "11111")

    visit "/shelters/#{shelter1.id}"

    click_link "Update Shelter"

    expect(current_path).to eq('/shelters/#{shelter1.id}/edit')
  end
end
