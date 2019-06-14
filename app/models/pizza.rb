class Pizza < ApplicationRecord
  belongs_to :restaurant
   validates :name, :ingredients, :restaurant_id, presence: true
   validates :name, uniqueness: true
end
