5.times do 
    Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
    Pizza.create(name:Faker::Food.dish, ingredients: Faker::Food.ingredient)
end