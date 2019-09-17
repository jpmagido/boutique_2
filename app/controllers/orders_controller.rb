class OrdersController < ApplicationController

	def show

	  	@jt_id = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id)).ids
	  	@jt_item_id = JtCartItem.find(@jt_id)
	  	@array_length = @jt_item_id.length - 1 
	end
end
