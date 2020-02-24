class Remerciement < ApplicationRecord
  validates :first_name, :family_name, :message, presence: true
end
