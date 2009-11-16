class Release < ActiveRecord::Base

  hobo_model # Don't put anything above this
  require 'paperclip'

  fields do
    title              :string
    cat_no             :string, :name => true
    release_date       :date
    image_file_name    :string
    image_content_type :string
    image_file_size    :string
    description        :text
    timestamps
  end
  
  has_many :tracks, :through => :release_tracks, :accessible => true 
  has_many :release_tracks, :dependent => :destroy, :accessible => true 

  has_attached_file :image, 
    #:path => ":attachment/:id/:style.:extension",
    :styles => {
      :thumb=> "80x80#",
      :small  => "150x150>",
      :medium => "300x300>"}


#  has_attached_file :image, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
#    :path => ":attachment/:id/:style.:extension",
#    :bucket => 'runtime-records' , 
#    :styles => {
#      :thumb=> "100x100#",
#      :small  => "150x150>" }

  #has_many :artists, :through => :artist_releases  
  #has_many :artist_releases, :dependent => :destroy

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
