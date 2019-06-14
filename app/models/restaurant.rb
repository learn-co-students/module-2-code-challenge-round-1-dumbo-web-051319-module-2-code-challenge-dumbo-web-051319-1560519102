class Restaurant < ApplicationRecord
  has_many :pizzas

  def self.search(search)
    result = self.all.select{|restaurant| restaurant.name.downcase.include?(search.downcase)}
  end
end
