class Api::V1::SongsController < Api::V1::BaseController

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all.order("created_at DESC")
  end

  def show
  	@song = Song.find(params[:id])
  end
end