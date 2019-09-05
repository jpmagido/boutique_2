Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'static_pages/contact'
  get 'static_pages/checkout'
  get 'static_pages/cart'
  get 'static_pages/about'
  get 'static_pages/shop'
  get 'static_pages/shop_single'
  get 'static_pages/thank_you'
  root 'static_pages#home'

  resource :items
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
