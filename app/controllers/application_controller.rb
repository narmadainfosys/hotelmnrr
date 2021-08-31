class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    before_action :update_allowed_parameters, if: :devise_controller?
  
    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :sirname, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :sirname, :email, :password, :current_password)}
    end

    # def logged_in?
    #     !!session[:user_id]
    # end

    # def current_user
    #     @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
    # end
end
