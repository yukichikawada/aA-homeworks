class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.integer :band_id, presence: true, null: false
      t.string :name, presence: true, null: false
      t.integer :year, presence: true, null: false
      t.boolean :live, default: false
    end
  end
end
