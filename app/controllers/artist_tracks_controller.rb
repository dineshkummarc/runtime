class ArtistTracksController < ApplicationController

  hobo_model_controller

  auto_actions :write_only, :create
  

  

end