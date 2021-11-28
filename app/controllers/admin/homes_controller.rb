class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_customer, only: [:top]

  def top
    # if params[:status].present?
    #   @requests = Request.where(status: params[:status][0])
    # else
      @requests = Request.where(status: "申請中")
    # end
  end

  private

  def ensure_customer

  end

end
