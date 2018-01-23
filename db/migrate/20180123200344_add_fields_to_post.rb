class AddFieldsToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :video, :string
    add_column :posts, :content_after, :string
  end
end
