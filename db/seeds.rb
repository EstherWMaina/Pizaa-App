Restraurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

5.times do 
    Restraurant.create(name:Faker::Restaurant.name, 
    address: Faker::Address.full_address)
end

5.times do 
    ingredients = []
    3 times{||ingredients << Faker::Food.ingredient}
end
    pizza.create(name:ingredients[-1],
    ingredients.join(", ") )
end

RestaurantPizza.create(restaurant_id: 1, pizza_id: 2)
RestaurantPizza.create(restaurant_id: 1, pizza_id: 4)
RestaurantPizza.create(restaurant_id: 2, pizza_id: 1)
RestaurantPizza.create(restaurant_id: 2, pizza_id: 4)
RestaurantPizza.create(restaurant_id: 3, pizza_id: 1)