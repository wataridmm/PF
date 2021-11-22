class Worker::RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def index
    @requests = requests.all
    @worker = current_worker.id
    @requests = Request.where(worker_id: @worker)

  end
  
  def all_workers
    
  end
  

  def show
    @worker = Worker.find(params[:id])
    @requests = @worker.requests.page(params[:page]).reverse_order
  end
end
