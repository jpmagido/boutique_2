class Cart < ApplicationRecord

	belongs_to :user
	has_many :jt_cart_items

	
end
