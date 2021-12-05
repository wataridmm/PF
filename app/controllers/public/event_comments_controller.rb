class Public::EventCommentsController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_customer,only: [:destroy]

  def create
    @event = Event.find(params[:event_id])
    comment = current_customer.event_comments.new(event_comment_params)
    comment.event_id = @event.id
    # API用　投稿したコメントをAPI側に渡してる
    comment.score = Language.get_data(comment.comment)
    if  comment.save
      redirect_to event_path(@event), notice: 'コメントを投稿しました。'
    else
      @event_comment = EventComment.new()
      flash.now[:alert] = 'コメントを入力してください。'
      render "public/events/show"
    end
  end

  def destroy
    EventComment.find_by(id: params[:id]).destroy
    redirect_to event_path(params[:event_id])
  end

  private

  def ensure_customer
    target_customer = EventComment.find(params[:id]).customer
    if current_customer.id != target_customer.id
      redirect_to root_path
    end
  end

  def event_comment_params
    params.require(:event_comment).permit(:comment)
  end





end
