class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end
  def show
    @pizza = Pizza.find(params[:id])
  end
  def new
    @pizza = Pizza.new
  end
  def create
    @pizza = Pizza.create(strong_params)
    redirect_to pizza_path(@pizza)
  end

  private

  def strong_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
