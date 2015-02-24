class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :contact_id
      t.integer :position_id
      t.timestamps null: false
    end
  end
end