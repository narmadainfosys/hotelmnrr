class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @current_user = current_user.role
    @foods = Food.all
    @rooms = Room.all
  end
end
