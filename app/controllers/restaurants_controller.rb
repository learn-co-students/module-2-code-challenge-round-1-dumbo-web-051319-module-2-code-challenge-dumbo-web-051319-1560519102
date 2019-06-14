class RestaurantsController < ApplicationController

  def index
    if params[:name]
        @restaurant = Restaurant.where('name LIKE ?', "%#{params[:name]}%")
      else
        @restaurants = Restaurant.all
      end
  end

  def search
    if params[:name]
        @restaurant = Restaurant.where('name LIKE ?', "%#{params[:name]}%")
      else
        @restaurants = Restaurant.all
      end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
  end

  def delete
  end

  def destroy
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

end
