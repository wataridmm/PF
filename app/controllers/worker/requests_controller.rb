class Worker::RequestsController < ApplicationController
  def new
    @request = Request.new
  end
  
  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    if @request.save
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
    params.require(:request).permit(:worker_id, :venue_id)
  end
  
end
