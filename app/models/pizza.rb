class Pizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :member

  validates :name, uniqueness: true
end
