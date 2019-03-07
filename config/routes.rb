Rails.application.routes.draw do

  namespace :admin do
  resources :users
  resources :product
  root 'admin#index'
end


  root "products#index"
  get '/home/index'
  devise_for :users

  resources :line_items, only: [:create, :update, :destroy]
  resources :facturations, except: [:destroy ,:new]
  resources :baskets, only: [:create, :update, :destroy, :show]
    resources :charges
  resources :categories, only: [:create, :update, :destroy, :show, :index]
  resources :products
end
