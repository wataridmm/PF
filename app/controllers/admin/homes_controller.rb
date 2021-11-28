class Admin::HomesController < ApplicationController

  def top
    # if params[:status].present?
    #   @requests = Request.where(status: params[:status][0])
    # else
      @requests = Request.where(status: "申請中")
    # end
  end

end
