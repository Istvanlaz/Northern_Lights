class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
    @lift = Lift.find(params[:lift_id])
  end

  def edit
    @passenger = Passenger.find(params[:lift_id])
  end

  def create
    @passenger = Passenger.new(passenger_params)
    @lift = Lift.find(params[:lift_id])
    @passenger.lift = @lift
    if @passenger.save
      redirect_to lifts_path
    else
      render :new
    end
  end

  def update
    @passenger = Passenger.find(params[:lift_id])
    @passenger.update(passenger_params)
    redirect_to lifts_path
  end

  def destroy
    @passenger = Passenger.find(params[:lift_id])
    @passenger.destroy
    redirect_to lifts_path
  end

  private

  def passenger_params
    params.require(:passenger).permit(:first_name, :family_name, :places, :contact, :aller, :retour, :lift_id)
  end
end
