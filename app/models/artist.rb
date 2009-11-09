class Artist < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name               :string
    image_file_name    :string
    image_content_type :string
    image_file_size    :string
    description        :text
    website            :string
    timestamps
  end

  has_many :tracks, :through => :artist_tracks  
  has_many :artist_tracks, :dependent => :destroy

  #has_many :releases, :through => :artist_releases  
  #has_many :artist_releases, :dependent => :destroy
  
  validates_presence_of :name

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
