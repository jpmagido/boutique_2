class JtCartItemsController < ApplicationController

	def create

		JtCartItem.create(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: params[:format])

		
		
		redirect_to(carts_path(Cart.find_by(user_id: current_user.id).id))
	end
end
