class AddArtistTracks < ActiveRecord::Migration
  def self.up
    create_table :artist_tracks do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :artist_id
      t.integer  :track_id
    end
    
    create_table :tracks do |t|
      t.string   :title
      t.integer  :release_id
      t.integer  :artist_id
      t.integer  :length
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :artist_tracks
    drop_table :tracks
  end
end
