class AddImageToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :obrazek, :image
  end
end
