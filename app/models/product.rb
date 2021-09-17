class Product < ApplicationRecord
  belongs_to :seller
  has_many :order, dependent: :destroy

  require 'csv'
  def self.import(file)
    count = 0
    CSV.foreach(file.path, headers: true) do |name_buyer, item, price, total, address_seller, name_seller|
      if Seller.find_by_name(name_seller[1]).nil?
        sellers = { name: name_seller[1], address: address_seller[1] }
        seller = Seller.create! sellers
      else
        seller = Seller.find_by_name(name_seller[1])
      end

      if Buyer.find_by_name(name_buyer[1]).nil?
        buyers = { name: name_buyer[1] }
        buyer = Buyer.create! buyers
      else
        buyer = Buyer.find_by_name(name_buyer[1])
      end

      if Product.find_by_item(item[1]).nil?
        products = { item: item[1], price: price[1], total: total[1], seller_id: seller.id }
        @product = Product.create! products
      else
        @product = Product.find_by_item(item[1])
        total = @product.total.to_i + total[1].to_i
        @product.update(total: total)
        @product = Product.find_by_item(item[1])
      end

      orders = { buyer_id: buyer.id, product_id: @product.id }
      Order.create! orders
      count += 1
    end
    count
  end
end
