class Public::VenueCommentsController < ApplicationController

  def create
    venue = Venue.find(params[:venue_id])
    comment = current_customer.venue_comments.new(venue_comment_params)
    comment.venue_id = venue.id
    comment.save
    redirect_to venue_path(venue)
  end

  def destroy
    VenueComment.find_by(id: params[:id]).destroy
    redirect_to venue_path(params[:venue_id])
  end

  private

  def venue_comment_params
    params.require(:venue_comment).permit(:comment)
  end




end
