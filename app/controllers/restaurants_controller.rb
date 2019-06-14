class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # @restaurants = Restaurant.all(params[:search])
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
