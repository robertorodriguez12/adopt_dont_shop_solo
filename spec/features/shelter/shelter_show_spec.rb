require 'rails_helper'

RSpec.describe 'Shelters show page' do
  it 'should see the shelter with the given id' do
    shelter1 = Shelter.create(name:"Puppy Paws", address: "123 Main Street", city: "Denver", state: "CO", zip: "11111")

    visit "/shelters/#{shelter1.id}"

    expect(page).to have_content("#{shelter1.name}")
    expect(page).to have_content("#{shelter1.address}")
    expect(page).to have_content("#{shelter1.city}")
    expect(page).to have_content("#{shelter1.state}")
    expect(page).to have_content("#{shelter1.zip}")
  end
end 
