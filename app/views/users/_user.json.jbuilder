json.extract! user, :id, :username, :password_digest, :user_email, :user_phone, :user_address, :created_at, :updated_at
json.url user_url(user, format: :json)