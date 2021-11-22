class Admin::ItemStocksController < ApplicationController
  def index
    @item_stocks = ItemStock.all
  end

  def show
    @item_stock = ItemStock.find(params[:id])
  end

  def new
    @item_stock = ItemStock.new
  end

  def create
    item_stock = ItemStock.new(item_stock_params)
    item_stock.save
    redirect_to admin_item_stocks_path
  end

  def update
    item_stock = ItemStock.find(params[:id])
    item_stock.update(item_stock_params)
    redirect_to admin_item_stock_path(item_stock.id)
  end

  def destroy
    item_stock = item_stock.find(params[:id])
    item_stock.destroy
    redirect_to admin_item_stocks_path
  end

  private

  def item_stock_params
    params.require(:item_stock).permit(:item_id, :stock, :status)
  end





end
