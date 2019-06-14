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
    dog = Pizza.create(pizza_params)

    redirect_to pizzas_path
  end

  private

  def pizza_params
    params.require(:dog).permit(:name, :ingredients, :restaurant_id)
  end




end
