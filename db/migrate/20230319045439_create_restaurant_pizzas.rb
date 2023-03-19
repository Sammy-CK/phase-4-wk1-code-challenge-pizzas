class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :restaurant_id, null: false
      t.integer :pizza_id, null: false
      t.timestamps
    end
  end
end
