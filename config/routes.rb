Rails.application.routes.draw do
  resources :wish_books
  resources :wishlists
  resources :books
  resources :book_orders
  resources :orders
  resources :users
end
