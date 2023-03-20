5.times do 
    restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
    pizza = Pizza.create(name:Faker::Food.dish, ingredients: Faker::Food.ingredient)
    curr_price = (1..30).to_a.sample
    puts curr_price
    RestaurantPizza.create(price: curr_price, pizza_id: pizza.id, restaurant_id: restaurant.id)
end