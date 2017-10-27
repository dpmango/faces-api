class AddPositionToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :position, :string
  end
end
