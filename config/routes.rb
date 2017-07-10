Rails.application.routes.draw do
  devise_for :users
  root to: 'products#home'
  get '/home', to: 'products#home', as: 'home'

  resources :products do
    resources :reviews, except: [:index, :show]
  end

  resources :orders
  resources :order_items

  resource :cart, only: [:show]
  resources :users

end
