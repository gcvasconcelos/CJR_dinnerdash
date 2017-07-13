class CartController < ApplicationController
	def show
		@cart = current_cart
	end

	def add
		control = 0
		current_cart.each do |item|
			if params[:id] == item["item_id"]
				item["quantity"] += 1
				control = 1
			end
		end
		current_cart << {item_id: params[:id], quantity: 1} if control != 1
		redirect_to :cart
	end

	def remove
		current_cart.delete_if { |item| item["item_id"] == params[:item_id] }

  	redirect_to :cart
	end

	def plus
		params[:quantity] += 1

	end
	def minus
		params[:quantity] -= 1
				
	end
end
