class AddForeignKeyRestaurantPizza < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :restaurant_pizzas, :pizzas, column: :pizza_id
    add_foreign_key :restaurant_pizzas, :restaurants, column: :restaurant_id
  end
end
