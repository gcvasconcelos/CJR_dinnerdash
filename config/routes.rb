Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  post 'users/create'
  get 'cart' => 'cart#show'
  get 'cart' => 'cart#add'
  post 'cart' => 'cart#add'

  resources :items
  resources :orders
  resources :category

  root "items#index"
end
