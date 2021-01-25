class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :genre
      t.string :image
      t.string :mp3
      t.string :bio

      t.timestamps
    end
  end
end
