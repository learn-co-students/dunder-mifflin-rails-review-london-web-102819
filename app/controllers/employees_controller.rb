class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(e_params)

        if @employee.save
            redirect_to employee_path(@employee)
        else
            render :new
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])

        if @employee.update(e_params)
            redirect_to employee_path(@employee)
        else
            render :edit
        end
    end

    private

    def e_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :img_url, :office, :dog_id)
    end
end
