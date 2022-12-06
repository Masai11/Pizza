class RestaurantsController < ApplicationController
    def index
        restaurant=Restaurant.all
        render json:restaurant
    end
    def show
            restaurant=Restaurant.find(params[:id])
            if restaurant.valid?
                render json: restaurant
            else
                render json:{error:"Restaurant Not Found"},status: :not_found
            end
    end
    
    def destroy
            restaurant=Restaurant.find_by(id: params[:id])
            if restaurant
                restaurant.destroy
                head :no_content
            else
                render json:{error:"Restaurant not found"},status: :not_found
            end
    end
end
