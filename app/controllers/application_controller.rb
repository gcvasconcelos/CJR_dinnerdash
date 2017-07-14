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

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

	protect_from_forgery with: :exception
  include SessionsHelper

end
