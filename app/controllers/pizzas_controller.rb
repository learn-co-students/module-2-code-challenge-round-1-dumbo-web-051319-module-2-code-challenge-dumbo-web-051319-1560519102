class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to pizza_path(@pizza)
    else
      flash[:errors] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
