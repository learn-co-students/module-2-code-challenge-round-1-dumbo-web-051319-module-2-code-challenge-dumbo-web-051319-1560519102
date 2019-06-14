class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

def show 
  @pizza = Pizza.find(parmas[:id])
end

def create 
  pizza = Pizza.create(pizza_params)
  
end

def new 
  @pizza = Pizza.new  
  # redirect_to restaurant_path(@resturant)
end


def pizza_params 
params.require(:pizza).permit(:name, :ingredients, :restaurant_id)

end
  
end
