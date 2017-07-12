class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_cart

  def current_cart
    session[:cart] ||= []
  end

  def authorize
		unless logged_in?
      redirect_to root_url
    end
 	end

	protect_from_forgery with: :exception
  include SessionsHelper

  def correct_user?
    @user = User.find(params[:id])
    unless current_user == @user
   		redirect_to users_path
    end
	end

  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
