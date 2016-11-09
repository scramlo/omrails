json.extract! prayer, :id, :body, :answered, :user_id, :created_at, :updated_at
json.url prayer_url(prayer, format: :json)