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
    pizza = Pizza.create(pizza_params)
    redirect_to pizzas_path
  end

  def update
    @pizza = Pizza.find(params[:id])
    @pizza.update(pizza_params)
  end


  private
  def pizza_params
     params.require(:pizza).permit(:name, :ingredients)
  end
end
