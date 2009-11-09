class ArtistRelease < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    artist_id  :integer
    release_id :integer
    timestamps
  end
  
  belongs_to :artist
  belongs_to :release


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
