class User < ApplicationRecord
  has_one :cart
  has_many :orders, through: :cart
  has_one :wishlist
  has_many :books, through: :orders
  has_many :books, through: :wishlist
end
