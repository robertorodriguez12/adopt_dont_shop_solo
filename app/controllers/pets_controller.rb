class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
  end

  def create
    pet = Pet.new({
      name: params[:pets][:name],
      approximate_age: params[:pets][:approximate_age],
      sex: params[:pets][:sex],
      shelter_at: params[:pets][:name_of_shelter_where_currently_located]
      })

      pet.save
      redirect_to '/pets'
  end
end