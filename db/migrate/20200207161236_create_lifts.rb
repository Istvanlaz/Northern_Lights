class CreateLifts < ActiveRecord::Migration[5.2]
  def change
    create_table :lifts do |t|
      t.string :first_name
      t.string :family_name
      t.integer :places_available
      t.string :contact
      t.string :rallying_point
      t.time :departure
      t.time :return

      t.timestamps
    end
  end
end
