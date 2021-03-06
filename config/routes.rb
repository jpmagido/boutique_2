Rails.application.routes.draw do
  get 'items/index'
  get 'carts/index'
  
  devise_for :users
  get 'static_pages/secret'
  get 'static_pages/contact'
  get 'static_pages/about'
  get 'static_pages/thank_you'
  root 'static_pages#home'

  resources :items, :carts, :jt_cart_items, :charges
  resource :orders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
