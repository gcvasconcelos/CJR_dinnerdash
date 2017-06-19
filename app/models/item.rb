class Item < ApplicationRecord
	has_many :categories
	
	validates :name, presence: true
	validates :description, presence: true
	validates :price, numericality: {greater_than: 0}
end
