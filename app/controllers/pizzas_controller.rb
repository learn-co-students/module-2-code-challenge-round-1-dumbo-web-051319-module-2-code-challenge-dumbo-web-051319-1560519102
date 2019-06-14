class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza  = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.create(pizza_params)
    redirect_to @pizza
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :address)
  end
  
end
