class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.integer "id"
      t.string "name"
      t.string "ingredients"
      t.timestamps
    end
  end
end
