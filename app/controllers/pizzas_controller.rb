class PizzasController < ApplicationController
  before_action :find_pizza, only: [:show]


  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all.map { |restaurant| [restaurant.name, restaurant.id]  }
  end

  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to @pizza
    else
      flash[:pizza_errors] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end
end


def find_pizza
  @pizza= Pizza.find_by(id: params[:id])
end

def pizza_params
  params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
end
