Rails.application.routes.draw do
<<<<<<< HEAD
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

=======
  devise_for :users
>>>>>>> 376a3057696c115e16b2faf0e4765697f58a8544
  get 'sessions/new'

  get 'users/new'
  get 'users/create'
  post 'users/create'
  get 'cart' => 'cart#show'
  get 'cart/:id' => 'cart#add', as: :add_cart
  get 'cart/:id' => 'cart#plus', as: :plus_cart
  delete 'cart/:id' => 'cart#minus', as: :minus_cart
  delete 'cart/' => 'cart#remove', as: :remove_cart

  resources :items
  resources :searches
  resources :orders
  resources :categories
  resources :users

  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  
<<<<<<< HEAD
  #root 'sessions#new'
=======
  # root 'sessions#new'
>>>>>>> 376a3057696c115e16b2faf0e4765697f58a8544
  root "items#index"
end
