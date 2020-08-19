class Remerciement < ApplicationRecord
  validates :first_name, :family_name, :message, presence: true
  after_create :send_emails
  def send_emails
    UserMailer.with(remerciements: self).remerciements.deliver_now
  end
end
