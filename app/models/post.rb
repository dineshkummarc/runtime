class Post < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title :string
    body  :text
    timestamps
  end
  
  validates_presence_of :body


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
