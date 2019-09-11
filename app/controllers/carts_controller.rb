class CartsController < ApplicationController

	def index
	Cart.all	
	end

	def show
		@cart_user = Cart.find(params[:format])

	  	@jt_id = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id)).ids
	  	@jt_item_id = JtCartItem.find(@jt_id)
	  	@array_length = @jt_item_id.length - 1  	
	end


end
