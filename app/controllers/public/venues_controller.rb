class Public::VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
    @venue_comment = VenueComment.new
    # @venue_comments = VenueComment.where(venue_id: params[:venue_id])
  end

end
