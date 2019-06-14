class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizzas = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.create(pizza_params)
    redirect_to @pizzas


# just realized pizza seed isnt there, try to add, not working. not enough time to figureout error
  end



  private
  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end
end
