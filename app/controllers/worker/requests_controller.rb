class Worker::RequestsController < ApplicationController


  def new
    @request = Request.new
    @request.request_details.build
  end

  def create
    @request = Request.new(event_id: params[:request][:event_id])
    @request.worker_id = current_worker.id
    if @request.save
      event = Event.find(params[:request][:event_id])
      event.worker_id = current_worker.id
      event.save
      #[{"item_id"=>"1", "amount"=>"2", "_destroy"=>"false"}, {"item_id"=>"4", "amount"=>"6", "_destroy"=>"false"}]
      params[:request][:request_details_attributes].values.each do | request_detail |
        RequestDetail.new({request_id: @request.id, item_id: request_detail[:item_id], amount: request_detail[:amount]}).save
      end

      # ここで作られたIDをdetailにぶち込む
      # request_detailを作る処理 　配列で送られてくる
      # eachとかで
      # save 最後に回数分s
      redirect_to worker_requests_path, notice: "You have created request successfully."
    else
      render 'new', notice: "申請に失敗しました"
    end
  end

  def index
    # @requests = Request.all
    # @worker = current_worker
    @requests = Request.all
    @my_requests = @requests.where(worker_id: current_worker.id)

    # ItemStock.where(item_id: 1).sum(:stock)

  end

  def my_request

  end


  def show
    # @worker = Worker.find(params[:id])
    @request = Request.find(params[:id])
    @request_detail = @request.request_details
    # @requests = @worker.requests.page(params[:page])
  end

  def edit
    @request = Request.find(params[:id])
  end


  private

  def request_params
    # params.require(:request).permit(:worker_id, :venue_id, [request_details_attributes:
    # [:request_id, :item_id, :amount]]).merge(worker_id: current_worker.id)
    params.require(:request).permit(
        :event_id, :worker_id, :venue_id,
        [request_details_attributes: [:request_id, :item_id, :amount, :_destroy, :id]]
      ).merge(worker_id: current_worker.id)
  end

end
