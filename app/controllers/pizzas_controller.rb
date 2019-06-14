class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    # byebug
    pizza = Pizza.create(pizzas_params)
    # redirect_to pizza_url(@pizza)

    if pizza
      redirect_to pizza      
    else
      # flash[:error] 
      redirect_to new_pizza_path
      # render "new"
    end

  end

  private
  def pizzas_params 
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
