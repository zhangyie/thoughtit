class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :project, index: true, foreign_key: true
      t.string :ctitle
      t.date :cbegin
      t.date :cend
      t.float :cproduct
      t.float :cservice
      t.float :cimplement
      t.float :cprogram
      t.float :cthird
      t.string :ckingdee
      t.text :cmemo

      t.timestamps null: false
    end
  end
end
