class NameToTitleOnAlbum < ActiveRecord::Migration[5.1]
  def change
    remove_column :albums, :name
    add_column    :albums, :title, :string
  end
end
