Rails.application.routes.draw do

  # post '/items/new' => 'items#create'

  devise_for :adminsters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :items
  resources :orders, only:[:create,:show, :index]
  resources :order_items
  resources :carts, only: [:show,:create,:update,:destroy]
  resources :users
  
  root "top#index"
end
