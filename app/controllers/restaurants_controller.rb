class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :restaurant_not_found
    # GET /restaurants
    def index
     restaurants = Restaurant.all
     render json: restaurants, status: :ok
    end

    # GET /restaurants/:id
    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, serializer: RestaurantwithpizzaSerializer, status: :ok
    end

    # DELETE /restaurants/:id
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
