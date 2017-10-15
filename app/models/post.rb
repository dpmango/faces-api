class Post < ApplicationRecord

  mount_uploader :photo, PostUploader
end
