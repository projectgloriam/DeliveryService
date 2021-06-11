json.extract! list, :id, :item, :price, :quantity, :total_price, :request_id, :created_at, :updated_at
json.url list_url(list, format: :json)