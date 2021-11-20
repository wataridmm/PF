class Admin::WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    worker = Worker.new(worker_params)
    worker.save
    redirect_to admin_workers_path
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
    params.require(:worker).permit(:last_name, :first_name, :email, :password, :password_confirmation, :is_deleted)
  end




end
