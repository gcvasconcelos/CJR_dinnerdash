module SessionsHelper
  def block_access
		redirect_to users_path if current_user.present?
  end
  def logged_in?
    !current_user.nil?
  end
end
