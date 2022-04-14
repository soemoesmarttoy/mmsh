Rails.application.routes.draw do
  resources :companies
  resources :customers
  devise_for :users
  resources :cashaccounts
  resources :warehouses
  resources :units
  resources :categories
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
