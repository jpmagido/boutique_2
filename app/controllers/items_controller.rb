class ItemsController < ApplicationController
  def index

  
  	@items = Item.all

  end

  def show

  	@item_name = Item.find(params[:format]).name
  	@item_price = Item.find(params[:format]).price
  	@item_description = Item.find(params[:format]).description
  	@item_select = Item.find(params[:format])
  	puts "$"* 100
  	puts params
  	puts "$"* 100


  end

end
