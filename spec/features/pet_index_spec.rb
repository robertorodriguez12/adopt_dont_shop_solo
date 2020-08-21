require 'rails_helper'

RSpec.describe 'Pets index page' do
  it 'should see names of pets on index' do
    pet1 = Pet.create(name:"Aspen", approximate_age: "3", sex: "Female",
      name_of_shelter_where_currently_located: "Puppy Paws", image: "pup1.jpeg"
    )
    # pet2 = Pet.create(name: "Walter", approximate_age: "5", sex: "Male",
    # name_of_shelter_where_currently_located: "Fort Pawz")
    # pet3 = Pet.create(name: "Peanut", approximate_age: "4", sex: "Male",
    # name_of_shelter_where_currently_located: "Paw Patrol")

    visit '/pets'

    expect(page).to have_content(pet1.name)
    expect(page).to have_content(pet1.approximate_age)
    expect(page).to have_content(pet1.sex)
    expect(page).to have_content(pet1.name_of_shelter_where_currently_located)
    expect(page).to have_xpath("//img['pup1.jpeg']")
    # expect(page).to have_content(pet2.name)
    # expect(page).to have_content(pet2.approximate_age)
    # expect(page).to have_content(pet2.sex)
    # expect(page).to have_content(pet2.name_of_shelter_where_currently_located)
    # expect(page).to have_content(pet3.name)
    # expect(page).to have_content(pet3.approximate_age)
    # expect(page).to have_content(pet3.sex)
    # expect(page).to have_content(pet3.name_of_shelter_where_currently_located)
  end
end
