json.extract! product, :id, :item, :price, :total, :seller_id, :created_at, :updated_at
json.url product_url(product, format: :json)
