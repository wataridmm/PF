class Public::VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
    @venue_comment = VenueComment.new
  end
end
