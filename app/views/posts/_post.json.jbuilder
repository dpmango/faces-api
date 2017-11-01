json.extract! post, :id, :name, :position, :description, :category, :photo, :filter, :published, :author_email, :author_social, :created_at, :updated_at
json.url post_url(post, format: :json)
