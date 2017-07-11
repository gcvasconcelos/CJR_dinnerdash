Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  post 'users/create'
  get 'cart' => 'cart#show'
  get 'cart/:id' => 'cart#add', as: :add_cart

  resources :items
  resources :orders
  resources :category

  root "items#index"
end
