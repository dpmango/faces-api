json.extract! post, :id, :name, :position, :description, :category, :photo, :hover_pos, :published, :author_email, :author_social, :seo_title, :seo_description, :seo_keywords, :created_at, :updated_at
json.url post_url(post, format: :json)
