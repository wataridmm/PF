class Worker::HomesController < ApplicationController
  before_action :authenticate_worker!
  before_action :ensure_customer,only: [:top]

  def top
    @events = Event.all
  end

  private

  def request_params
      params.require(:request).permit(:status)
  end
end
