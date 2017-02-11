class Api::V1::PublishersController < Api::V1::BaseController

  # GET /publishers
  # GET /publishers.json
  def index
    @publishers = Publisher.all.order("created_at DESC")
  end

  def show
  	@publisher = Publisher.find(params[:id])
  end
end