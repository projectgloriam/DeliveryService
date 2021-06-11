json.extract! driver, :id, :driver_name, :driver_email, :driver_phone, :driver_address, :driver_location, :created_at, :updated_at
json.url driver_url(driver, format: :json)