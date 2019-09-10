class CartsController < ApplicationController

	def index
	Cart.all	
	end

	def show
		@cart_user = Cart.find(params[:format])
	puts "$"* 100
  		puts params
  	puts "$"* 100


  	@jt_id = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id)).ids
  	@jt_item_id = JtCartItem.find(@jt_id)
  	@array_length = @jt_item_id.length - 1
  	





  	

  	puts "$"* 100
  		puts "#{@items}"
  	puts "$"* 100
	end


end
