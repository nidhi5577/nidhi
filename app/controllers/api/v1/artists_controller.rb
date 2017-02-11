class Api::V1::ArtistsController < Api::V1::BaseController

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.all.order("created_at DESC")
  end

  def show
  	@artist = Artist.find(params[:id])
  end
end