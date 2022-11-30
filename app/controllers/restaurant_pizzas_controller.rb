class RestaurantPizzasController < ApplicationController

    #handle error if data is not valid
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    def create
      restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
      render json: restaurant_pizza.pizza ,except: [:created_at, :updated_at]
    end
  
    private
  
    def restaurant_pizza_params
      params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
  
    def render_unprocessable_entity_response(invalid)
      render json: { errors: "Validation errors"}, status: :unprocessable_entity
    end
  
  end