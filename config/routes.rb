Rails.application.routes.draw do
  resources :all_books
  resources :wish_books
  resources :wishlists
  resources :books
  resources :book_orders
  resources :orders
  resources :users, only: [:show]
  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'
  get '/inventory', to: 'users#inventory'
  
end
