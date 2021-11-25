class Admin::RequestsController < ApplicationController
  def index
    @requests = Request.all

  end

  def show
    @request = Request.find(params[:id])
    @request_detail = @request.request_details
  end

  def update

    @request = Request.find(params[:id])
    @status = request_params.values[0].to_i
    if @request.update(status: @status)
      if (@status = 1)
        #@requestからdetailのitem_id（複数）を取得します.each分でitemの種類だけループさせる
        @item_stock = ItemStock.all
        item = @request.request_details.item
        item_stock = @itemstock.stock
        
        #item_idをキーにして在庫を更新する。stock - detailのamount

      end
      redirect_to admin_requests_path, notice: "対応ステータスを更新しました"
    else
      render :index, alert: "対応ステータスを更新できませんでした"
    end
  end


  private
    def request_params
      params.require(:request).permit(:status)
    end

end
