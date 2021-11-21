class Admin::ItemStocksController < ApplicationController
  def index
    @item_stocks = ItemStock.all
  end

  def show

  end

  def new
    @item_stocks = ItemStock.new
  end

  def create
    item_stock = item_stock.new(item_stock_params)
    item_stock.save
    redirect_to admin_itemstocks_path
  end

  private

  def item_stock_params
    params.require(:item_stock).permit(:item_id, :stock, :status)
  end





end
