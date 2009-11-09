class ReleaseTrack < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    track_id   :integer
    release_id :integer
    timestamps
  end

  belongs_to :track
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
