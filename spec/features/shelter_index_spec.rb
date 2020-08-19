require 'rails_helper'

RSpec.describe 'Shelters index page' do
  it 'should see names of shelters on index' do
    shelter1 = Shelter.create(name:"Puppy Paws")
    shelter2 = Shelter.create(name: "Animal")
    shelter3 = Shelter.create(name: "The Den")

    visit '/shelters'

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content(shelter2.name)
    expect(page).to have_content(shelter3.name)
  end
end
