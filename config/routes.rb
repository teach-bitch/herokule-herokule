Rails.application.routes.draw do

  namespace :admin do
  resources :users
  resources :products do
    resources :images, only: [:create]
  end
  root 'admin#index'
end


  root "products#index"
  get '/home/index'
  devise_for :users

  resources :line_items, only: [:create, :update, :destroy]
  resources :facturations, only: [:show, :index]
  resources :baskets, only: [:create, :update, :destroy, :show]
  resources :charges
  resources :categories, only: [:create, :update, :destroy, :show, :index]
  resources :products
end
