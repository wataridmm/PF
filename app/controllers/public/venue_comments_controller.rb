class Public::VenueCommentsController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_customer,only: [:destroy]

  def create
    @venue = Venue.find(params[:venue_id])
    comment = current_customer.venue_comments.new(venue_comment_params)
    comment.venue_id = @venue.id
    # API用　投稿したコメントをAPI側に渡してる
    comment.score = Language.get_data(comment.comment)
    if  comment.save
      redirect_to venue_path(@venue), notice: 'コメントを投稿しました。'
    else
      @venue_comment = VenueComment.new()
      flash.now[:alert] = 'コメントを入力してください。'
      render "public/venues/show"
    end
  end

  def destroy
    VenueComment.find_by(id: params[:id]).destroy
    redirect_to venue_path(params[:venue_id])
  end

  private

  def ensure_customer
    target_customer = VenueComment.find(params[:id]).customer
    if current_customer.id != target_customer.id
      redirect_to root_path
    end
  end

  def venue_comment_params
    params.require(:venue_comment).permit(:comment)
  end




end
