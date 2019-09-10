class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :orders
   has_many :carts

   after_create :cart_creation

   def cart_creation
   		Cart.create(user_id: User.last.id)
   end
end
