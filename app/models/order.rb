class Order < ApplicationRecord
	has_many :items, dependent: :destroy
	validates :items, presence: true
	before_create :set_status
	before_save :update_subtotal
	before_action :authenticate_user!

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
