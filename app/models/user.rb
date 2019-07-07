class User < ApplicationRecord
  has_many :orders
  has_many :wishlists
  has_many :books, through: :orders
  has_many :books, through: :wishlists
  has_many :items
  has_secure_password
  
end
