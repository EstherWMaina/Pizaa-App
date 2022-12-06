class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant 
    beelongs_to :pizza 
end
