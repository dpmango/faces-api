class AddSeoToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :seo_title, :string
    add_column :posts, :seo_keywords, :string
    add_column :posts, :seo_description, :string
  end
end
