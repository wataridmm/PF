class Public::VenueCommentsController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_customer,only: [:create, :destroy]

  def create
    venue = Venue.find(params[:venue_id])
    comment = current_customer.venue_comments.new(venue_comment_params)
    comment.venue_id = venue.id
    if  comment.save
      redirect_to venue_path(venue), notice: 'コメントを投稿しました。'
    else
      flash.now[:alert] = 'コメントを入力してください。'
7     render :new
    end
  end

  def destroy
    VenueComment.find_by(id: params[:id]).destroy
    redirect_to venue_path(params[:venue_id])
  end

  private

  def ensure_customer
    @customer = Customer.find(params[:id])
  end

  def venue_comment_params
    params.require(:venue_comment).permit(:comment)
  end




end
