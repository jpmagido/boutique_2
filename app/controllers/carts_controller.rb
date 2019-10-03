class CartsController < ApplicationController
	include CartHelper

	def index
	Cart.all	
	end

	def show
		@cart_user = Cart.find(params[:id])

	  	@jt_id = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id)).ids
	  	@jt_item_id = JtCartItem.find(@jt_id)
	  	@array_length = @jt_item_id.length - 1
	  	@current_cart = Cart.find_by(user_id: current_user.id).id
	  	@current_cart_items = JtCartItem.where(cart_id: @current_cart).ids
	  	@validate_items = JtCartItem.find_by(cart_id: @current_cart)
	  	@item_in_cart_exist = JtCartItem.find_by(cart_id: Cart.find_by(user_id: current_user.id).id)
	end

	def destroy
	
		delete_all_my_cart
		redirect_to cart_path(current_user.id)

	end


end
