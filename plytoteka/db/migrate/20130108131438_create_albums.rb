class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :tytul
      t.string :wykonawca
      t.integer :rok_powstania
      t.text :opis

      t.timestamps
    end
  end
end
