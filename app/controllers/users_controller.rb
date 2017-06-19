class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(items_params)
  	if @user.save
  		flash[:notice] = "You signed up succesfully"
  		flash[:color] = "valid"
  	else
  		flash[:notice] = "Form is invalid"
  		flash[:color] = "invalid"
  	end

  	render "new"
  end	

  private
  	def items_params
  		params.require(:user).permit(:email, :name, :nickname, :encrypted_password)
  	end
end
