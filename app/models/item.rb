class Item < ApplicationRecord

	has_many :jt_order_items
	has_many :jt_cart_items
end
