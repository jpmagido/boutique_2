class Order < ApplicationRecord

	belongs_to :user
	has_many :jt_order_items
end
