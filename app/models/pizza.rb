class Pizza < ApplicationRecord
  belongs_to :restaurant
  validates :name, presence: true
  validates :email, uniqueness: true

end
