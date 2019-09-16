class JtCartItemsController < ApplicationController

	def create

		JtCartItem.create(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: params[:format])		
		redirect_to(cart_path(Cart.find_by(user_id: current_user.id).id))

		puts "$" *100
		puts params
		puts "$" *100

	end

	def destroy

		@private_cart = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: params[:id]).ids

		JtCartItem.find(@private_cart[0]).destroy
		
		redirect_to(cart_path(Cart.find_by(user_id: current_user.id).id))
	end

	
end
