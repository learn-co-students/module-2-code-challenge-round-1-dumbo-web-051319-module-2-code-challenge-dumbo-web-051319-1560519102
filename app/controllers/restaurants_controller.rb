class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant
    @pizzas =  Pizza.all
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
