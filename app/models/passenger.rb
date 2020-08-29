class Passenger < ApplicationRecord
  belongs_to :lift
  validates :first_name, :family_name, :places, :contact, presence: true
  validates :places, inclusion: { in: 0..7 }, numericality: { only_integer: true }
  after_create :send_emails
  def send_emails
    UserMailer.with(passanger: self).lifts_passanger.deliver_now
    UserMailer.with(passanger: self).lifts_conducteur.deliver_now
  end
end
