Rails.application.routes.draw do

  # Clean up these two
  get 'order_btree/new'
  get 'transactions/new'

  # Order/ Cart magic
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'

  get 'carts/show'

  # Routing for about page
  get "about", to: "trees#about", as: "about"

  # Routing for Stripe Checkout (Double check)
  get "checkout", to: "trees#checkout", as: "checkout"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'trees#index'

  resources :trees, only: [:index, :show]
  resource  :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :transactions, only: [:new, :create]
  resources :charges
  resources :provinces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
