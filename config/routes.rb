Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'sessions/new'

  get 'users/new'
  get 'users/create'
  post 'users/create'
  get 'cart' => 'cart#show'
  get 'cart/:id' => 'cart#add', as: :add_cart

  resources :items
  resources :searches
  resources :orders
  resources :categories
  resources :users

  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  
  #root 'sessions#new'
  root "items#index"
end
