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
  	





  	@items = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id)).ids

  	@items_all = JtCartItem.find(@items)
  	@item_id = JtCartItem.find_by(cart_id: @items).item_id
  	#@items_all = JtCartItem.where(cart_id: )
  	@item_img_url= Item.find(@item_id).image_url
  	@item_name = Item.find(@item_id).name
  	@item_price = Item.find(@item_id).price

  	puts "$"* 100
  		puts "#{@items}"
  	puts "$"* 100
	end


end
