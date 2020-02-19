class PagesController < ApplicationController
  def index
    @lifts = Lift.all
  end
end
