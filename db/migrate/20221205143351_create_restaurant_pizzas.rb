class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.interger "restaurant_id"
      t.integer "pizza_id"
      t.timestamps
    end
  end
end
