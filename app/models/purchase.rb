class Purchase < ApplicationRecord
  belongs_to :product
  belongs_to :customer
  belongs_to :receipt
end
