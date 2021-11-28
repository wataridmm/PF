class Worker::EventsController < ApplicationController
  before_action :authenticate_worker!
  before_action :ensure_customer,only: [:inde, :show]
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def ensure_customer
    
  end

  def request_params
      params.require(:request).permit(:status)
  end
end
