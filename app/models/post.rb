class Post < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  before_validation :strip_whitespace

  # mount_uploader :photo, PostUploader
  mount_base64_uploader :photo, PostUploader

  private
  def strip_whitespace
    self.category = self.category.strip unless self.category.nil?
    # self.email = self.email.strip unless self.email.nil?
    # self.nick = self.nick.strip unless self.nick.nil?
  end

end
