class ItemsController < ApplicationController
  def index

  
  	@items = Item.all

  end

  def show

  	@item_name = Item.find(params[:id]).name
  	@item_price = Item.find(params[:id]).price
  	@item_description = Item.find(params[:id]).description
  	@item_select = Item.find(params[:id])
  	puts "$"* 100
  	puts params
  	puts "$"* 100


  end

end
