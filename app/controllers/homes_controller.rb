class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @foods = Food.all
    @rooms = Room.all
    @current_user = current_user
  end
end
