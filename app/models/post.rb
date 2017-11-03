class Post < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  # mount_uploader :photo, PostUploader
  mount_base64_uploader :photo, PostUploader
end
