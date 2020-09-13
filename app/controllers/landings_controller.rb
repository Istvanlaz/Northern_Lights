class LandingsController < ApplicationController
  def index
    @events = Event.all

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: { content: render_to_string(partial: "/landings/info_window", locals: { event: event }) },
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    # if @event.geocoded?
    #   @markers = [
    #                 lat: @event.latitude,
    #                 lng: @event.longitude,
    #                 infoWindow: { content: render_to_string(partial: "/landings/info_window", locals: { event: @event }) }
    #               ]
    # end
  end
end
