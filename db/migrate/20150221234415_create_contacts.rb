class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.timestamps null: false
    end
  end
end
