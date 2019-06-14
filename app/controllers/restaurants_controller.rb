class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurants = Restaurant.where(name: params[:search])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
