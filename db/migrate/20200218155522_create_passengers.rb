class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :family_name
      t.string :contact
      t.integer :places
      t.boolean :aller
      t.boolean :retour
      t.references :lift, foreign_key: true

      t.timestamps
    end
  end
end
