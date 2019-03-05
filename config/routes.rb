Rails.application.routes.draw do
  root "products#index"
  get '/home/index'	
  devise_for :users

  resources :line_items, only: [:create, :edit, :update, :destroy]
  resources :facturations, except: [:destroy]
  resources :baskets, except: [:index]
  resources :categories
  resources :products
end
