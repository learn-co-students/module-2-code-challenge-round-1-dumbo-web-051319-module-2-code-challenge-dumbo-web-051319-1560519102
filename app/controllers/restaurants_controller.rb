class RestaurantsController < ApplicationController

  def index
    if params[:name]
      @restaurants = Restaurant.where('name LIKE ?', "%#{params[:name]}%")
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
