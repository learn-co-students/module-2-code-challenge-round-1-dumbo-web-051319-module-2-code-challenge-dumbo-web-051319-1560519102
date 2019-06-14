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
    pizza = Pizza.create(self_params)
    redirect_to pizza
  end

  private

  def self_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
