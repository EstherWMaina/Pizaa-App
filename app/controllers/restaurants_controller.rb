class RestaurantsController < ApplicationController

    #handle error if restaurant not found
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
    def index
      render json: Restaurant.all #, except: [:created_at, :updated_at]
    end
  
    def show
      @restaurant = Restaurant.find(params[:id])
      render json: {
        id: @restaurant.id,
        name: @restaurant.name,
        address: @restaurant.address,
        pizzas: @restaurant.pizzas
      }
    end
  
    def destroy
      #delete the restaurant with all associated restaurant_pizzas
      @restaurant = Restaurant.find(params[:id])
      @restaurant.restaurant_pizzas.destroy_all
      @restaurant.destroy
  
    end
  
    private
    def render_not_found_response
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  end
  