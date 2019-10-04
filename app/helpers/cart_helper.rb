module CartHelper

	def total_price

	@jt_id = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id)).ids
  	@jt_item_id = JtCartItem.find(@jt_id)
  	@array_length = @jt_item_id.length - 1
  	i = 0
	  	while @array_length >= 0
	  		i += (Item.find(@jt_item_id[@array_length][:item_id]).price)
	  		@array_length -= 1		
	  	end
		return i
	end

	def total_price_ttc

		total_price * 1.2
		
	end

	def delete_all_my_cart
		@current_cart_items = JtCartItem.where(cart_id: Cart.find_by(user_id: current_user.id).id).ids
		l = @current_cart_items.length
		a = 0
		while a < l

			JtCartItem.find(@current_cart_items[a]).destroy
			a += 1
		end

	end

	def count_item(input)
		
		var1 = JtCartItem.where(item_id: input, cart_id: Cart.find_by(user_id: current_user.id).id).ids
		return var1.length
	end

	def count_array

		var2 = JtCartItem.where(item_id: Item.find(@jt_item_id[@array_length][:item_id]).id, cart_id: Cart.find_by(user_id: current_user.id).id).ids.length
		return var2
	end
end
