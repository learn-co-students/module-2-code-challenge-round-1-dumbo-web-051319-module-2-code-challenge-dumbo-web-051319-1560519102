class Member < ApplicationRecord
  has_many :pizzas
  has_many :restaurants, through: :pizzas
end
