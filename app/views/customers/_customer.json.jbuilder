json.extract! customer, :id, :customer_name, :customer_phone, :customer_email, :customer_location, :created_at, :updated_at
json.url customer_url(customer, format: :json)