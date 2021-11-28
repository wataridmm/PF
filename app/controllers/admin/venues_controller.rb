class Admin::VenuesController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_customer, only: [:edit, :index, :update, :new, :show, :update, :destroy]
  
  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save ? (redirect_to admin_venues_path) : (render :new)
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    venue = Venue.find(params[:id])
    venue.update(venue_params)
    redirect_to admin_venue_path(venue.id)
  end

  def destroy
    venue = Venue.find(params[:id])
    venue.destroy
    redirect_to admin_venues_path
  end



  private
  
  def ensure_customer
    
  end

  def venue_params
    params.require(:venue).permit(:name, :introduction, :station, :status, :is_active, :prefecture_id)
  end


end
