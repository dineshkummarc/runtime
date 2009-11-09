class TmpDropArtistTracks < ActiveRecord::Migration
  def self.up
    drop_table :artist_tracks
  end

  def self.down
    create_table "artist_tracks", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "artist_id"
      t.integer  "track_id"
    end
  end
end
