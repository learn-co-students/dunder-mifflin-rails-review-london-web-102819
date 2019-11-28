class DogsController < ApplicationController
    def index
        @dogs=Dog.all 
    end 

    def show
        @dog=Dog.find(params[:id])
    end 


    def loved
        @dogs = Dog.all.sort_by{|dog| dog.employees.count}.reverse 
        render :index 
    end 
end
