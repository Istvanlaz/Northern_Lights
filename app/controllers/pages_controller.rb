class PagesController < ApplicationController
  def index
    @lifts = Lift.all
  end

  def show
    @lifts = Lift.all
    @lift = Lift.find(params[:id])
  end

  private

  def lift_params
    params.require(:lift).permit(:first_name, :family_name, :places_available, :contact,
                                 :rallying_point, :departure, :return)
  end
end
