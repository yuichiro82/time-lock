class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = Event.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :index }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save!
    redirect_to root_path
  end

  def show; end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to root_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
  end

  private

  def set_event
    @event = Event.where(user_id: current_user.id)
  end

  def event_params
    params.require(:event).permit(:title, :start_time, :end_time, :user_id, :text)
  end
end
