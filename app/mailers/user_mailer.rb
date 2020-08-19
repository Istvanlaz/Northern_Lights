class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation(reponse)
    # @greeting = "Hi"
    @reponses = reponse
    mail to: @reponse.last.contact, subject: "Confirmation réponse - Nothern Lights"
  end
end
