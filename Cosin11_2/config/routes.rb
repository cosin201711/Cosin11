Rails.application.routes.draw do
  get 'top/index'

  devise_for :adminsters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
