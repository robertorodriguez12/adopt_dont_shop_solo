# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pet1 = Pet.create(name:"Aspen", approximate_age: "3", sex: "Female",
  name_of_shelter_where_currently_located: "Puppy Paws", image: "pup1.jpeg"
)
