class ItemsController < ApplicationController
  def index

  	@item_one_price = Item.first.price
  	@item_one_name = Item.first.name
  	@item_one_description = Item.first.description
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

  private

  def current_item

    @item_select = session[:current_item]

    
  end
end
