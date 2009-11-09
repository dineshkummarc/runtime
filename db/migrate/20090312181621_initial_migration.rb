class InitialMigration < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string   :name
      t.string   :image_file_name
      t.string   :image_content_type
      t.string   :image_file_size
      t.text     :description
      t.string   :website
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :artist_releases do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :artist_id
      t.integer  :release_id
    end
    
    create_table :posts do |t|
      t.string   :title
      t.text     :body
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :releases do |t|
      t.string   :title
      t.string   :cat_no
      t.datetime :release_date
      t.string   :image_file_name
      t.string   :image_content_type
      t.string   :image_file_size
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    create_table :users do |t|
      t.string   :crypted_password, :limit => 40
      t.string   :salt, :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :name
      t.string   :email_address
      t.boolean  :administrator, :default => false
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :state, :default => "active"
      t.datetime :key_timestamp
    end
  end

  def self.down
    drop_table :artists
    drop_table :artist_releases
    drop_table :posts
    drop_table :releases
    drop_table :users
  end
end
