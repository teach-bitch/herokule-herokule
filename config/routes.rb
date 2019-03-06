Rails.application.routes.draw do
  root "products#index"
<<<<<<< HEAD
  get '/home/index'	
  devise_for :users
=======
>>>>>>> e7923199798142847a78917e4b7cbf2d347b92b6

  resources :line_items, only: [:create, :edit, :update, :destroy, :new]
  resources :facturations, except: [:destroy ,:new]
  resources :baskets, except: [:index ,:new]
  resources :categories
  resources :products
end
