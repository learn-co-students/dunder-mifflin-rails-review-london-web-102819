class DogsController < ApplicationController
    

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sort
        @dogs = Dog.left_joins(:employees).group(:id).order("COUNT(employees.id) DESC")
    end
end
