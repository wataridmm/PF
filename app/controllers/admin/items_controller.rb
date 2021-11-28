class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_customer, only: [:edit, :index, :update, :new, :show, :update, :destroy]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save ? (redirect_to admin_items_path) : (render :new)
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admin_item_path(item.id)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to admin_items_path
  end

  private
  
  def ensure_customer
    @customer = Customer.find(params[:id])
  end

  def item_params
  params.require(:item).permit(:name, :comment, :is_active)
  end


end
