class RestaurantsController < ApplicationController
  def index
    if params[:restaurant]
      @restaurant = Restaurant.where('restaurant LIKE ?', "%#{params[:search]}%")
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
