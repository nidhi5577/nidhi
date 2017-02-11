class Api::V1::AlbumsController < Api::V1::BaseController

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all.order("released_on DESC")
  end

  def show
  	@album = Album.find(params[:id])
  end
end