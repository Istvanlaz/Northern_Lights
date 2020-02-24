class CreateRemerciements < ActiveRecord::Migration[5.2]
  def change
    create_table :remerciements do |t|
      t.string :first_name
      t.string :family_name
      t.string :message

      t.timestamps
    end
  end
end
