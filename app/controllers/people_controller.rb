class PeopleController < ApplicationController
  def index
    @people = Person.all
    render json: @people, status: :ok
  end

  def show
    @person = Person.find(params[:id])
    render json: @person, status: :ok
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      render json: @person, status: :created
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      head :no_content, status: :ok
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    head :no_content, status: :ok
  end

  private

  def person_params
    params.require(:person).permit(:id, :name, :birth, :document)
  end
end
