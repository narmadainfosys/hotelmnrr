class OrdersController < ApplicationController
  def index
    @foods = Food.all
    @order = Order.all
  end
end


