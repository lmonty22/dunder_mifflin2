class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def show
        @order = Order.find(params[:id])
    end

    def new
        @order = Order.new
        @order.build_customer
    end

    def create
        @order = Order.create(order_params)
        redirect_to order_path(@order)
    end

    def edit
        @order = Order.find(params[:id])
    end

    def update
        @order = Order.find(params[:id])
        @order.update(order_params)
        redirect_to order_path(@order)
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to orders_path
    end

    private

    def order_params
        params.require(:order).permit(:sales_person_id, :price_per_ream, :number_of_reams, :paper_type, customer_attributes: [:name])
    end

end
