class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @current_user = User.all
  end
end
