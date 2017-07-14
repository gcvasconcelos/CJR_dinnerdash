class Item < ApplicationRecord
	has_and_belongs_to_many :categories
	#has_many :order_items

	
	validates :name, presence: true
	validates :description, presence: true
	validates :price, numericality: {greater_than: 0}

	def self.search(search)
		if search
			where(["name LIKE ?", "%#{search}%"])
		else
			all
		end
	end
end
