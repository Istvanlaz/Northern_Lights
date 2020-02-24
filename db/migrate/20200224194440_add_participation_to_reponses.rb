class AddParticipationToReponses < ActiveRecord::Migration[5.2]
  def change
    add_column :reponses, :participation, :boolean
  end
end
