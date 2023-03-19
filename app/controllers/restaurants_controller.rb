class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :restaurant_not_found
    def index
     restaurants = Restaurant.all
     render json: restaurants, status: :ok
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, serializer: RestaurantwithpizzaSerializer, status: :ok
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        render json: {}, status: :no_content
    end


    private

    def restaurant_not_found
        render json: {error: "Restaurant not found"}, status: :not_found
    end



end
