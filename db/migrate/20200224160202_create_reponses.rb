class CreateReponses < ActiveRecord::Migration[5.2]
  def change
    create_table :reponses do |t|
      t.string :first_name
      t.string :family_name
      t.string :contact
      t.boolean :vegetarian
      t.string :message

      t.timestamps
    end
  end
end
