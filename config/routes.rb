Rails.application.routes.draw do
  resources :item_locations
  resources :locations
  resources :items
  resources :users
  resources :order_items
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
