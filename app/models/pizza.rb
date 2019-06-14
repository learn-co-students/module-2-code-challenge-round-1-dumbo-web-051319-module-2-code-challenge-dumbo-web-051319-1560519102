class Pizza < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true, uniqueness: true
  validates :ingredients, presence: true
  validates :restaurant_id, presence: true
end
