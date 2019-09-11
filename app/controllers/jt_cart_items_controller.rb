class JtCartItemsController < ApplicationController

	def create

		JtCartItem.create(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: params[:format])		
		redirect_to(carts_path(Cart.find_by(user_id: current_user.id).id))
	end

	def destroy

		@cart_select = Cart.find(params[:format])
		@private_cart = JtCartItem.find_by(cart_id: @cart_select)
		@private_cart.destroy
		
		redirect_to(carts_path(Cart.find_by(user_id: current_user.id).id))
	end

	
end
