class Seller < ApplicationRecord
  has_many :product, dependent: :destroy
end
