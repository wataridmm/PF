class Worker::ItemStocksController < ApplicationController

  def index
    @item_stocks = ItemStock.all
  end

end
