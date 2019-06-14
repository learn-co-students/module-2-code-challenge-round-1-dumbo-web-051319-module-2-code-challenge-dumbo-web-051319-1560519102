class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    # byebug
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to @restaurant
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant  = Restaurant.find(params[:id])
    redirect_to @restaurant
  end

private
 def restaurant_params
   params.require(:restaurant).permit(:name, :address)
 end

end
