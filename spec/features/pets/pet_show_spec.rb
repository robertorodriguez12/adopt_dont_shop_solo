require 'rails_helper'

RSpec.describe 'Shows pet based off :id' do
  it 'shows pet information' do
    shelter = Shelter.create(name: 'Puppy Pawz',
                               address: '123 Main Street',
                               city: 'Denver',
                               state: 'CO',
                               zip: '80221')


    pet1 = Pet.create(name: 'Aspen',
                         approximate_age: "3",
                         sex: 'male',
                         shelter_id: shelter.id,
                         image: "../../assets/images/aspen.jpg")

    visit "/pets/#{pet1.id}"

    expect(page).to have_xpath("//img['pet1.image']")
    expect(page).to have_content(pet1.name)
    expect(page).to have_content(pet1.approximate_age)
    expect(page).to have_content(pet1.sex)

  end
end
