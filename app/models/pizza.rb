class Pizza < ApplicationRecord
  belongs_to :restaurant
  # validates :name, uniqueness: true  ,presence: true

end
