class Admin::WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def new
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def edit
     @worker = Worker.find(params[:id])
  end

  def update
    worker = Worker.find(params[:id])
    worker.update(worker_params)
    redirect_to admin_worker_path(worker.id)
  end

  private

  def worker_params
    params.require(:worker).permit(:last_name, :first_name, :email, :is_deleted)
  end




end
