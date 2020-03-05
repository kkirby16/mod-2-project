Rails.application.routes.draw do
  resources :item_locations
  resources :locations
  resources :items
  resources :users
  resources :order_items
  resources :orders

  #anyhting outside of app has to be restarted.

  # get "/login", to: "sessions#new", as: "login"
  # post "/login", to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
