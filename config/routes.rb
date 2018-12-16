Rails.application.routes.draw do

  devise_for :users
  resources :categories
  resources :products
  resources :searches
  root :to => "home#index"
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end