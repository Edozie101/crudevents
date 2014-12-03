class EventsController < ApplicationController
  def index
    @event = Event.all
  end
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def event_params
    params.require(:event).permit{
      :date
      :description
      :requires_id
      :capacity
      :directions

    }
  end

end
