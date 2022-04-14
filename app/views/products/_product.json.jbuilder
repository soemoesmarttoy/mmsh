json.extract! product, :id, :name, :unit_price, :quantity, :unit_id, :warehouse_id, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
