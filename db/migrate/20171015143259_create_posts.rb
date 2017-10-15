class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :photo
      t.string :filter

      t.timestamps
    end
  end
end
