Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/search', to: 'restaurants#search'
  get '/pizzas', to: 'pizzas#index'
  resources :restaurants, only: [:show]
  resources :pizzas, only: [:show, :new, :create]
end
