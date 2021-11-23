class Admin::EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save ? (redirect_to admin_events_path) : (render :new)
  end

  def show
  end

  def edit
  end
end
