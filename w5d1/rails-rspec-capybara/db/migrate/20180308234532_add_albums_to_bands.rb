class AddAlbumsToBands < ActiveRecord::Migration[5.1]
  def change
    add_column :bands, :album_id, :integer
  end
end
