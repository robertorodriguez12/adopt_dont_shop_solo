class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :approximate_age
      t.string :sex
      t.string :name_of_shelter_where_currently_located
      t.string :image
      t.timestamps
    end
    add_reference :pets, :shelter, foreign_key: false
  end
end
