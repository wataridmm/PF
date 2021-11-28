class Public::CustomersController < ApplicationController

  def top
    @event = Event.all

  end



end
