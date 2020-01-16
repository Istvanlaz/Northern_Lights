class CreateDressCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :dress_codes do |t|

      t.timestamps
    end
  end
end
