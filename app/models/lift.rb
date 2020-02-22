class Lift < ApplicationRecord
  has_many :passengers, dependent: :destroy
  validates :first_name, :family_name, :places_available, :contact, :rallying_point, :departure, presence: true
  validates :places_available, inclusion: { in: 0..7 }, numericality: { only_integer: true }
end
