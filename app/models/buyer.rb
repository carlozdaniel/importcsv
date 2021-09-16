class Buyer < ApplicationRecord
  has_many :order, dependent: :destroy
end
