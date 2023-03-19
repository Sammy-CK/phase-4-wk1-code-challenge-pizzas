class RestaurantPizza < ApplicationRecord
    validates :price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }
    belongs_to :restaurant
    belongs_to :pizza
end
