class Menu < ApplicationRecord
    validates :food_name, presence: true
    validates :origin, presence: true
    validates :ingredients, presence: true
end
