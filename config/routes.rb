Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  post 'users/create'

  resources :items
  resources :orders

  root "items#index"
end
