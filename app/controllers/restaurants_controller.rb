class RestaurantsController < ApplicationController
  before_action :find_rest, only: [:show]

  def index
    # byebug
    if params[:search] == nil
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.search(params[:search])
      if @restaurant == []
        @no_result = "Sorry, we can't find #{params[:search]} for you."
        @restaurants = Restaurant.all
      end
    end
  end

  def show
    @pizzas = @restaurant.pizzas
  end
end



def find_rest
  @restaurant = Restaurant.find_by(id: params[:id])
end
