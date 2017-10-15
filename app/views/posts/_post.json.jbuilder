json.extract! post, :id, :name, :description, :category, :photo, :filter, :created_at, :updated_at
json.url post_url(post, format: :json)
