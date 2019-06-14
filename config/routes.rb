Rails.application.routes.draw do
  resources :restaurants, :pizzas
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
