class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.all[0]
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def search
    search_name = params[:restaurant][:name]
    # @restaurant = Restaurant.find_by(name: params[:restaurant][:name])
    @restaurant = Restaurant.find_by("name like ?", "%#{search_name}%")
    if @restaurant
      redirect_to @restaurant
    else
      flash[:errors] = ["No results"]
      redirect_to restaurants_path
    end
  end
end
