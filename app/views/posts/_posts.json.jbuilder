json.extract! post, :id, :name, :category, :photo, :hover_pos, :published, :created_at, :updated_at
json.url post_url(post, format: :json)
