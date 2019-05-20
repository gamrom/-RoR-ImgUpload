class AddImageToImgpost < ActiveRecord::Migration[5.2]
  def change
    add_column :imgposts, :image, :string
  end
end
