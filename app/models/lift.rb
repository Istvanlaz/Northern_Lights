class Lift < ApplicationRecord
  validates :first_name, :family_name, :places_available, :contact, :rallying_point, :departure, presence: true
end
