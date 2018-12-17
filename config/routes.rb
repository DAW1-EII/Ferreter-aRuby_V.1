Rails.application.routes.draw do

  get 'carrito/compra'

  get 'homedosp/index'

  devise_for :users
  resources :categories
  resources :products
  resources :searches
  root :to => "home#index"
  get 'home/index'

  get 'homedosp/index'
  get 'carrito/compra'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
