class Reponse < ApplicationRecord
  validates :first_name, :family_name, :contact, presence: true
  after_create :send_emails
  def send_emails
    UserMailer.with(reponse: self).confirmation_participation.deliver_now
    UserMailer.with(reponse: self).confirmation.deliver_now

  end
end
