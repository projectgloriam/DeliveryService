json.extract! request, :id, :customer_id, :driver_id, :location_name, :map_location, :created_at, :updated_at
json.url request_url(request, format: :json)