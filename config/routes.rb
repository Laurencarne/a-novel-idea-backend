Rails.application.routes.draw do
  resources :wish_books
  resources :wishlists
  resources :books
  resources :book_orders
  resources :orders
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
