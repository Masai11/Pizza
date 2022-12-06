class PizzasController < ApplicationController
    def index
        pizza=Pizza.all
        render json: pizza
    end

    def create
        pizza=Pizza.create(name: params[:name],restaurant: params[:restaurant])
        if pizza.valid?
            render json:pizza,status: :created
        else
          render json: { error: pizza.errors }, status: :unprocessable_entity
        end

    end
end
