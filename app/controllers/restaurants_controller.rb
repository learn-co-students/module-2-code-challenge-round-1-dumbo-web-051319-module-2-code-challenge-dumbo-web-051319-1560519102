class RestaurantsController < ApplicationController
   before_action :find_restaurant,  only:[:show,:edit,:update,:delete]



  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant.Restaurant.create(restaurant_params)

  end




  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end


end
