class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation
    # @greeting = "Hi"
    p params

    @reponse = params[:reponse]
    p @reponse
    mail to: 'organisateurs@gmail.com', subject: "Confirmation réponse - Nothern Lights" #changer mail des organisateurs ici manuellement. Après le to:
  end

  def welcome
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end

  def confirmation_participation
    @reponse = params[:reponse]
    mail to: @reponse.contact, subject: "Confirmation réponse - Nothern Lights"
  end

  def remerciements
    @remerciements = params[:remerciements]
    mail to: 'organisateurs@gmail.com', subject: "Remerciements - Nothern Lights"
  end

  def lifts_conducteur
    @passanger = params[:passanger]
    mail to: @passanger.lift.contact, subject: "Un nouveau passager dans ta voiture ! - Nothern Lights"
  end

  def lifts_passanger
    @passanger = params[:passanger]
    mail to: @passanger.contact, subject: "Confirmation réservation lift - Nothern Lights"
  end
end
