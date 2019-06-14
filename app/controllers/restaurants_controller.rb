class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end


def show 
  @restaurant = Restaurant.find(params[:id]) 
end

def create 
  restaurant = Restaurant.create(restaurant_params)
  
end

def new 
  restaurant = Restaurant.new 
end


def edit 
  
  
end

private 

def restaurant_params 
  params.require(:resturant).permit(:name, :address)
end 


end
