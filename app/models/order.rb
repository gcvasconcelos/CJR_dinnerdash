class Order < ApplicationRecord
	has_many :items, dependent: :destroy
	
	validates :items, presence: true
end
