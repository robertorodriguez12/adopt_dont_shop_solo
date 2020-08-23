require 'rails_helper'

RSpec.describe 'Shelters index page' do
  it 'should see names of shelters on index' do
    shelter1 = Shelter.create(name:"Puppy Paws")
    pet1 = shelter1.pets.create!(name:"Aspen", approximate_age: "3", sex: "Female",
      name_of_shelter_where_currently_located: "Puppy Paws", image: "pup1.jpeg"
    )
    visit "/shelters/#{shelter1.id}/pets"

    expect(page).to have_content(pet1.name)
    expect(page).to have_content(pet1.approximate_age)
    expect(page).to have_content(pet1.sex)
    expect(page).to have_xpath("//img['pup1.jpeg']")
  end
end
