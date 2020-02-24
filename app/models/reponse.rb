class Reponse < ApplicationRecord
  validates :first_name, :family_name, :contact, presence: true
end
