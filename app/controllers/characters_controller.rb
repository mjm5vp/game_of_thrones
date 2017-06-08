class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
    @categories = @character.categories
  end

  # new
  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  # create
  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create!(character_params)
    redirect_to house_path(@house)
  end

  # edit
  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  # update
  def update
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
    @character.update(character_params)

    redirect_to house_character_path(@house, @character)
  end

  # destroy
  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to house_path(@character.house)
  end

  private
  def character_params
    params.require(:character).permit(:name, :title, :is_alive, :img_url, :house_id)
  end
end
