class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
