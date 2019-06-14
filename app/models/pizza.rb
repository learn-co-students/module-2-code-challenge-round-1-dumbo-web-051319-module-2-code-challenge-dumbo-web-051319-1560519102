class Pizza < ApplicationRecord
    belongs_to :restaurant


validates :pizza, presence: true 
validates :pizza, uniqueness: true
end 






# 6. I should not be able to create a pizza with the 
# same name as a pizza that already exists.
