class Pizza < ApplicationRecord
  belongs_to :restaurant
  validates :name, :ingredients, presence: true
  validates :name, uniqueness: true
end
