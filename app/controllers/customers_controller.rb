class CustomersController < ApplicationController
    def index
    @customers = Customer.all
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.valid?
            @customer.save
            redirect_to customer_path(@customer)
        else
            render :new
        end
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def edit
        @customer = Customer.find(params[:id])
    end

    def update
        @customer = Customer.find(params[:id])
        @customer.update(customer_params)
        redirect_to customer_path(@customer)
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
        redirect_to customers_path
    end

    private

    def customer_params
        params.require(:customer).permit(:name)
    end
end

