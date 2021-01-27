class CreateRecs < ActiveRecord::Migration[6.0]
  def change
    create_table :recs do |t|
      t.integer :recer_id
      t.integer :recee_id
      t.integer :song_id
      t.timestamps
    end
  end
end
