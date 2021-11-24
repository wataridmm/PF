class Worker::RequestsController < ApplicationController
  def new
    @request = Request.new
    @request.request_details.build
  end

  def create
    @request = Request.new(request_params)
    @request.worker_id = current_worker.id
    if @request.save
      # ここで作られたIDをdetailにぶち込む
      # request_detailを作る処理 　配列で送られてくる
      # eachとかで
      # save 最後に回数分
      redirect_to worker_requests_path, notice: "You have created request successfully."
    else
      @requests = Request.all
      render 'index'
    end
  end

  def index
    @requests = Request.all
    @worker = current_worker.id
    @requests = Request.where(worker_id: @worker)

  end

  def all_workers

  end


  def show
    @worker = Worker.find(params[:id])
    @requests = @worker.requests.page(params[:page]).reverse_order
  end

  private

  def request_params
    params.require(:request).permit(:worker_id, :venue_id, [request_details_attributes:
    [:request_id, :item_id, :amount]]).merge(worker_id: current_worker.id)
  end

end
