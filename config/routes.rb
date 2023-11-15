# config/routes.rb

Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end

  # Additional route for handling POST "restaurants" without a specific ID
  post 'restaurants', to: 'restaurants#create'

  root 'restaurants#index'
end
