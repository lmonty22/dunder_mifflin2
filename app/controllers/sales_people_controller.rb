class SalesPeopleController < ApplicationController

    def index
        @sales_people = SalesPerson.all
    end

    def show
        @sales_person = SalesPerson.find(params[:id])
    end

    def new
        @sales_person = SalesPerson.new
    end

    def create
        @sales_person = SalesPerson.create(sales_person_params)
        redirect_to sales_person_path(@sales_person)
    end

    def edit
        @sales_person = SalesPerson.find(params[:id])
    end

    def update
        @sales_peron = SalesPerson.find(params[:id])
        @sales_person.update(sales_person_params)
        redirect_to sales_person_path(@sales_person)
    end

    def destroy
        @sales_peron = SalesPerson.find(params[:id])
        @sales_person.destroy
        redirect_to sales_people_path
    end

    private
    def sales_person_params
        params.require(:sales_person).permit(:name, :catch_phrase, :significant_other)
    end
    
end


