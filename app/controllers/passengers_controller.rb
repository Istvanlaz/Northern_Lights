class PassengersController < ApplicationController
  before_action :set_lift

  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def edit
    @passenger = Passenger.find(params[:lift_id])
  end

  def create
    @passenger = Passenger.new(passenger_params)
    @passenger.lift = @lift
    if @passenger.save
      redirect_to lifts_path, notice: "Votre trajet à bien été enregistré, vous serez mis en contact avec le Bob de votre choix."
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

  def set_lift
    @lift = Lift.find(params[:lift_id])
  end

  def passenger_params
    params.require(:passenger).permit(:first_name, :family_name, :places, :contact, :aller, :retour, :lift_id)
  end
end
