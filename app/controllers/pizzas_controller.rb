class PizzasController < ApplicationController
  before_action :find_pizza  only:[:show,:edit,:update,:delete]

  def index
    @pizzas = Pizza.all
  end




  def new
    @pizza = Pizza.new
  end

  def create
    @pizza =Pizza.create(pizza =params)

  end



def find_pizza
  @pizza = Pizza.find(params[:id])
end

private

def pizza_params
  params.require(:pizza).permit(:name, :ingredient)

end
