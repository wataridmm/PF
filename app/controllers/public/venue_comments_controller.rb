class Public::VenueCommentsController < ApplicationController

  def create
    venue = Venue.find(params[:venue_id])
    comment = current_customer.venue_comments.new(venue_comment_params)
    comment.venue_id = venue.id
    if  comment.save
      redirect_to venue_path(venue), notice: 'コメントを送信しました。'
    else
      flash.now[:alert] = 'コメントを入力してください。'
7     render venue_path
    end
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
