class OrdersController < ApplicationController
	has_many :items
	before_create :set_status
	before_save :update_subtotal

	def subtotal
		order_items.collect { |i| i.valid? ? (i.quantity * i.unit_price) : 0 }.sum
	end

	private
		def set_status
			self.order_status_id = 1
		end

		def update_subtotal
			self[:subtotal] = subtotal
		end
end
