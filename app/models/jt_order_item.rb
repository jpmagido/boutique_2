class JtOrderItem < ApplicationRecord

	belongs_to :order
	belongs_to :jt_cart_items
end
