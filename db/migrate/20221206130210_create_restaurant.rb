class CreateRestaurant < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
