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
    mail to: @reponse.contact, subject: "Confirmation réponse - Nothern Lights"
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
end
