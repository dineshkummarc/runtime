class ArtistTrack < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    track_id  :integer
    artist_id :integer
    timestamps
  end
  
  belongs_to :artist
  belongs_to :track
  
  def name(track=true)
    track ? self.artist.name : self.track.title
  end

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
