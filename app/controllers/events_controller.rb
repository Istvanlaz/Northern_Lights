class EventsController < ApplicationController
  def index
    @events = Event.all

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    # @event = Event.find(params[:id])

    @event = Event.find(params[:id])
    if @event.geocoded?
      @markers = [
                    lat: @event.latitude,
                    lng: @event.longitude,
                    infoWindow: { content: render_to_string(partial: "/landings/info_window", locals: { event: @event }) }
                  ]
    end
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: "La localisation de l'event a bien été enregistrée."
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :address)
  end
end
