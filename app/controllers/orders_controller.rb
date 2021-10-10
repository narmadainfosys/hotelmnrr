class OrdersController < ApplicationController

  before_action :initialize_item, only: [:index]

  def index
    @order_items = Item.new
    @foods = Food.all
    @order = Order.all
  end

  def update
  end

  def create
    @item = Item.create(ite,_params)
  end

  def delete
  end

  private
   def initialize_item
     @item = Item.new
   end



end


