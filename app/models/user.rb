class User < ApplicationRecord
	attr_accessor :password
	EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
	validates :name, :presence => true, :length => { :in => 3..20 }
	validates :nickname, :presence => true, :uniqueness => true, :length => { :in => 3..10 }
  validates :password, :confirmation => true
  validates_length_of :password, :in => 6..20, :on => :create
end
