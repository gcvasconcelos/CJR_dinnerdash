class CartController < ApplicationController
	def show
		@cart = current_cart
	end

	def add
		current_cart << {item_id: params[:id], quantity: 1}
		@items = []
		current_cart.each ||
		@items << Item.find(params[:id])
		redirect_to :cart
	end

	def remove
		@items = Item.find(params[:id]) 
    	@item.destroy	
    	redirect_to :cart
	end
end
