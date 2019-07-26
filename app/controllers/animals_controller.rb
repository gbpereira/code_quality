class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render json: @animals, status: :ok
  end

  def show
    @animal = Animal.find(params[:id])
    render json: @animal, status: :ok
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      render json: @animal, status: :created
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      head :no_content, status: :ok
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    head :no_content, status: :ok
  end

  private

  def animal_params
    params.require(:animal).permit(:id, :name, :cost, :kind, :owner_id)
  end
end
