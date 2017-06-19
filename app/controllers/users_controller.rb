class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(users_params)
  	if @user.save
  		flash[:notice] = "You signed up succesfully"
  		flash[:color] = "valid"

      redirect_to root_path
  	else
  		flash[:notice] = "Form is invalid"
  		flash[:color] = "invalid"
    	render "new"
    end

  end	

  private
  	def users_params
  		params.require(:user).permit(:email, :name, :nickname, :password, :password_confirmation)
  	end
end
