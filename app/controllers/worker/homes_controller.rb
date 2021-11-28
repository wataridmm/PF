class Worker::HomesController < ApplicationController
  before_action :authenticate_worker!
  before_action :ensure_customer,only: [:top]

  def top
    @events = Event.all
  end

  private
  
  def ensure_customer
    @worker = Worker.find(params[:id])
  end

  def request_params
      params.require(:request).permit(:status)
  end
end
