class AddStatusToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :published, :boolean, :default => true
    add_column :posts, :author_email, :string
    add_column :posts, :author_social, :string
  end
end
