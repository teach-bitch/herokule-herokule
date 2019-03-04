Rails.application.routes.draw do
  root "products#index"
<<<<<<< HEAD
  get '/home/index'	
  devise_for :users
=======
>>>>>>> wip view show#product

  resources :line_items, only: [:create, :edit, :update, :destroy, :new]
  resources :facturations, except: [:destroy ,:new]
  resources :baskets, except: [:index ,:new]
  resources :categories
  resources :products
end
