class Admin::RequestsController < ApplicationController
  def index
    @requests = Request.all

  end

  def show

  end

  def edit
  end
end
