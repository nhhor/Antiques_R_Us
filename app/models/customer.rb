class Customer < ApplicationRecord
  has_many :purchases
#   has_many :products, :through => :purchases
end
