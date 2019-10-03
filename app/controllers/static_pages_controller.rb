class StaticPagesController < ApplicationController
  def index
  end

  def secret
  	@mail_user = User.find(current_user.id).email
  	@id_user = current_user.id
  	@factu_user = Order.where(user_id: @id_user).last
  end

  def home
  end
end
