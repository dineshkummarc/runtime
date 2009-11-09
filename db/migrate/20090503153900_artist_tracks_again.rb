class ArtistTracksAgain < ActiveRecord::Migration
  def self.up
    create_table :artist_tracks do |t|
      t.integer  :track_id
      t.integer  :artist_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :artist_tracks
  end
end
