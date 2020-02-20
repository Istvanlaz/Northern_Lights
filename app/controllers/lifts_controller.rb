class LiftsController < ApplicationController
  def index
    @lifts = Lift.all
  end

  def lift_index
    @lifts = Lift.all
  end

  def show
    @lift = Lift.find(params[:id])
  end

  def new
    @lift = Lift.new
  end

  def edit
    @lift = Lift.find(params[:id])
  end

  def create
    @lift = Lift.new(lift_params)
    if @lift.save
      redirect_to lifts_path
    else
      render :new
    end
  end

  private

  def lift_params
    params.require(:lift).permit(:first_name, :family_name, :places_available, :contact, :rallying_point, :departure, :return)
  end
end
