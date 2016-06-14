class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.string :cover_art
      t.integer :song_count

      t.timestamps null: false
    end
  end
end
