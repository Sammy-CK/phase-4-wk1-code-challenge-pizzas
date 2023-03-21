# 5.times do 
#     restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
#     pizza = Pizza.create(name:Faker::Food.dish, ingredients: Faker::Food.ingredient)
#     curr_price = (1..30).to_a.sample
#     puts curr_price
#     RestaurantPizza.create(price: curr_price, pizza_id: pizza.id, restaurant_id: restaurant.id)
# end

# Create some restaurants
restaurant1 = Restaurant.create(name: "Pizza Hut", address: Faker::Address.full_address)
restaurant2 = Restaurant.create(name: "Papa John's", address: Faker::Address.full_address)
restaurant3 = Restaurant.create(name: "Domino's", address: Faker::Address.full_address)

# Create some pizzas
pizza1 = Pizza.create(name: "Pepperoni", ingredients: "Pepperoni, cheese, tomato sauce")
pizza2 = Pizza.create(name: "Margherita", ingredients: "Fresh mozzarella cheese, fresh basil leaves, tomato sauce, olive oil")
pizza3 = Pizza.create(name: "Supreme", ingredients:"Tomato sauce, mozzarella cheese, pepperoni, sausage, green peppers, onions, mushrooms, black olives")

# Create some restaurant pizzas
RestaurantPizza.create(price: 13, restaurant_id: restaurant1.id, pizza_id: pizza1.id)
RestaurantPizza.create(price: 7, restaurant_id: restaurant1.id, pizza_id: pizza2.id)
RestaurantPizza.create(price: 12, restaurant_id: restaurant2.id, pizza_id: pizza2.id)
RestaurantPizza.create(price: 15, restaurant_id: restaurant2.id, pizza_id: pizza3.id)
RestaurantPizza.create(price: 25, restaurant_id: restaurant3.id, pizza_id: pizza1.id)
RestaurantPizza.create(price: 10, restaurant_id: restaurant3.id, pizza_id: pizza3.id)
