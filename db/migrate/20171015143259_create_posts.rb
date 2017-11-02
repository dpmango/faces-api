class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :position
      t.text :description
      t.string :category
      t.string :photo
      t.string :hover_pos, :default => "center center"
      t.boolean :published, :default => false
      t.string :author_email
      t.string :author_social
      t.timestamps
    end
  end
end
