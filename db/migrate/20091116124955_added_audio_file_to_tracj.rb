class AddedAudioFileToTracj < ActiveRecord::Migration
  def self.up
    add_column :tracks, :audio_file_name, :string
    add_column :tracks, :audio_content_type, :string
    add_column :tracks, :audio_file_size, :string
  end

  def self.down
    remove_column :tracks, :audio_file_name
    remove_column :tracks, :audio_content_type
    remove_column :tracks, :audio_file_size
  end
end
