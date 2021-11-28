class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_customer, only: [:edit, :index, :update]
  
  def index
    @customers = Customer.all
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to admin_customers_path
  end

  private

  def ensure_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :is_deleted)
  end
end
