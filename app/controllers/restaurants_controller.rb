class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if params[:search]
      @restaurants = Restaurant.find_by(name: params[:search])

      # @restaurants = Restaurant.find_by(name: :q)
      # if !@restaurants
      #   return Restaurant.all
      # end
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
