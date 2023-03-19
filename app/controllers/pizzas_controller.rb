class PizzasController < ApplicationController

    def index
        pizzas = Pizza.all
        render json: pizzas, status: :ok
    end

end
