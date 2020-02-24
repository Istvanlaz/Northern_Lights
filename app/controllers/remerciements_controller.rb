class RemerciementsController < ApplicationController
  def new
    @remerciement = Remerciement.new
  end

  def create
    @remerciement = Remerciement.new(remerciement_params)
    if @remerciement.save
      redirect_to accueil_index_path, notice: "Votre remerciement à bien été enregistrée."
    else
      render :new
    end
  end

  private

  def remerciement_params
    params.require(:remerciement).permit(:first_name, :family_name, :contact, :vegetarian, :message)
  end
end
