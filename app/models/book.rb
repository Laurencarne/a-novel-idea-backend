class Book < ApplicationRecord
  has_many :wish_books
  has_many :book_orders
  has_many :cart_books
  has_many :users, through: :cart
  has_many :users, through: :wishlist
  has_many :users, through: :orders
end
