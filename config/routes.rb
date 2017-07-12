Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  get 'users/create'
  post 'users/create'
  get 'cart' => 'cart#show'
  get 'cart/:id' => 'cart#add', as: :add_cart

  resources :items
  resources :orders
  resources :category
  resources :users

  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  
  root 'sessions#new'
  #root "items#index"
end
