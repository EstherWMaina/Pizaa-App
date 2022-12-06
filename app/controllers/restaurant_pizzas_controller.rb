class RestaurantPizzasController < ApplicationController

    #handle error if data is not valid
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method
    def create
      restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
      render json: restaurant_pizza.pizza ,except: [:created_at, :updated_at]
    end
  
    private
  
    def restaurant_pizza_params
      params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
  
    def unprocessable_entity_method(e)
      render json: { errors: e.record.errors}, status: :unprocessable_entity
    end
  
  end