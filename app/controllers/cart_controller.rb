class CartController < ApplicationController
	def show
		@cart = current_cart
	end

	def add
		current_cart << params[:item]
	end
end
