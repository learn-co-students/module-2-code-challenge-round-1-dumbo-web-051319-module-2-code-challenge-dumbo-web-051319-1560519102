class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if params[:search]
      # @restaurants = Restaurant.where(name: params[:search])
      @restaurants = Restaurant.where('name lIKE ?', "%#{params[:search]}%")
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
  end

end
