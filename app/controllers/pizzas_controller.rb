class PizzasController < ApplicationController
  before_action :all_pizzas, only: [:index]
  before_action :find_pizza, except: [:index,:new, :create]

  def index
    # @pizzas = Pizza.all
  
  end

  def show

  end



  def new
    @restaurants = Restaurant.all
    @pizza = Pizza.new()
  end

  def create
    pizza = Pizza.create(pizza_params)
    if pizza.valid?
    redirect_to pizza
    else
      flash[:errors]= pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name,:ingredients,:restaurant_id)

  end

  def all_pizzas
    @pizzas = Pizza.all
  end

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end
end
