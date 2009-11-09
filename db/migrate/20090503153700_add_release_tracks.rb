class AddReleaseTracks < ActiveRecord::Migration
  def self.up
    create_table :release_tracks do |t|
      t.integer  :track_id
      t.integer  :release_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :release_tracks
  end
end
