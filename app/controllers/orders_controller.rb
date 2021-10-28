class OrdersController < ApplicationController
  before_action :set_orders, only: [:destroy]
  def index
    @foods = Food.all
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    # order.find(params[:id]).destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to userorders_path, notice: ' order was successfully destroyed.' }
    end
  end
  
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_path notice: 'order was successfully created' }
      end
  end

  
end

private
  def set_orders
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:name, :food_id, :user_id)
  end
end


