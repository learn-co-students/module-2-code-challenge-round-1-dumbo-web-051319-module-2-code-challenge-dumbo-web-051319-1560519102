class Restaurant < ApplicationRecord
  has_many :pizzas
  has_many :members, through: :pizzas
end
