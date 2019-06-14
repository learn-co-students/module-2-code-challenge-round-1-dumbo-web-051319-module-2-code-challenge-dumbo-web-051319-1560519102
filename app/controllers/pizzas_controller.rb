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
    pizza = Pizza.create(pizza_params)
    if pizza.valid?
      redirect_to pizza
    else
      flash[:errors] = pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end

  def edit
    @pizza = Pizza.find(params[:id])
    @restaurants = Restaurant.all
  end

  def update
    pizza = Pizza.find(params[:id])
    pizza.update(pizza_params)
    redirect_to pizza
  end

  def destroy
    pizza = Pizza.find(params[:id])
    pizza.destroy
    redirect_to restaurants_path
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id )
  end
  
end
