class Track < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title      :string
    release_id :integer
    length     :integer #seconds
    timestamps
  end

  belongs_to :release
  
  has_many :artists, :through => :artist_tracks, :accessible => true  
  has_many :artist_tracks, :dependent => :destroy, :accessible => true  
  
  has_many :releases, :through => :release_tracks, :accessible => true 
  has_many :release_tracks, :dependent => :destroy, :accessible => true 
  

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
