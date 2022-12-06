class Pizza < ApplicationRecord
    validates :name, :ingredients, presence: true
    has_many :restaurant_pizza
    has_many :restaurant, through: :restaurant_pizza
end
