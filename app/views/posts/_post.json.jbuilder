json.extract! post, :id, :name, :position, :description, :video, :content_after, :category, :photo, :hover_pos, :published, :author_email, :author_social, :seo_title, :seo_description, :seo_keywords, :created_at, :updated_at
json.prev_post @prev_post
json.next_post @next_post
json.url post_url(post, format: :json)
