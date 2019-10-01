class OrdersController < ApplicationController
	include OrdersHelper

	def new
		@new_order = Order.new
	end

	def create
		Order.create(total_price: total_price, adress: params[:adress], zip_code: params[:zip_code], country: params[:country], first_name: params[:first_name], last_name: params[:last_name], company_name: params[:company_name], user_id: current_user.id)
		redirect_to new_charge_path	
	end

	def show

	  	@jt_id = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id)).ids
	  	@jt_item_id = JtCartItem.find(@jt_id)
	  	@array_length = @jt_item_id.length - 1 
	end


end
