class JtCartItem < ApplicationRecord

	belongs_to :cart
	belongs_to :item

end
