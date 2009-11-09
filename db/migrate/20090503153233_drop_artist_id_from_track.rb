class DropArtistIdFromTrack < ActiveRecord::Migration
  def self.up
    remove_column :tracks, :artist_id
  end

  def self.down
    add_column :tracks, :artist_id, :integer
  end
end
