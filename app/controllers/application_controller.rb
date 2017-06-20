class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_order

  def current_order
    session{:cart} ||= []
    session{:cart} 
  end

end
