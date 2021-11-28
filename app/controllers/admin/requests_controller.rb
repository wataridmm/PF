class Admin::RequestsController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_customer, only: [:index, :update, :show, :update]

  def index
    @requests = Request.page(params[:page]).reverse_order

  end

  def show
    @request = Request.find(params[:id])
    @request_detail = @request.request_details
  end

  def update

    @request = Request.find(params[:id])
    @status = request_params.values[0].to_i
    if @request.update(status: @status)
      @request.organaize_item_stock_amount(@status)
      redirect_to admin_requests_path, notice: "対応ステータスを更新しました"
    else
      render :index, alert: "対応ステータスを更新できませんでした"
    end
  end


  private

  def ensure_customer

  end

    def request_params
      params.require(:request).permit(:status)
    end

end
