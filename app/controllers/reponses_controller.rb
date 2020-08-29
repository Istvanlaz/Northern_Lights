 class ReponsesController < ApplicationController
  def index
    @reponses = Reponse.all

  end
  def new
    @reponse = Reponse.new
  end

  def create
    @reponse = Reponse.new(reponse_params)
    if @reponse.save
      redirect_to accueil_index_path, notice: "Votre réponse à bien été enregistrée."
    else
      render :new
    end
  end

  private

  def reponse_params
    params.require(:reponse).permit(:first_name, :family_name, :contact, :vegetarian, :participation, :message)
  end
end
