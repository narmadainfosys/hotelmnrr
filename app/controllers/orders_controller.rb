class OrdersController < ApplicationController
  def index
    @foods = Food.all
  end
end
