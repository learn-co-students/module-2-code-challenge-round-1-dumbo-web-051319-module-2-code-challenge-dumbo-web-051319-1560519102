class Pizza < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence:true
  validates :name, uniqueness:true


  def list_ingredients
    self.ingredients.split(',')
  end

  # def commas_ingredients
  #   if
  # end
end
