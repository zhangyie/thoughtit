class CreateIncomeplans < ActiveRecord::Migration
  def change
    create_table :incomeplans do |t|
      t.references :contract, index: true, foreign_key: true
      t.string :ititle
      t.float :iprice
      t.date :idate

      t.timestamps null: false
    end
  end
end
