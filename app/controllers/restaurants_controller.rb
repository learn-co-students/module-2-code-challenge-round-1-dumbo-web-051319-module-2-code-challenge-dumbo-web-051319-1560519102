# frozen_string_literal: true

class RestaurantsController < ApplicationController
  # before_action :all_restaurants, only: [:index]
  before_action :find_restaurant, except: [:index]

  def index
    @restaurants = if params[:search]
                     Restaurant.where('name LIKE ?', "%#{params[:search]}%")
                   else
                     Restaurant.all
                   end
  end

  def show
    @pizzas = @restaurant.pizzas
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :search)
  end

  def all_restaurants
    @restaurants = Restaurant.all
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
