class RestaurantsController < ApplicationController
  def index
    # byebug
    @restaurants = Restaurant.all
      if params[:search]
          @restaurants = Restaurant.search(params[:search])
        else
          @restaurants = Restaurant.all
      end
    end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
