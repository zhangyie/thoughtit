class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :ptitle
      t.string :pcustom
      t.string :ptype
      t.string :pprice
      t.date :pdate
      t.string :psales
      t.string :psource
      t.string :pstate

      t.timestamps null: false
    end
  end
end
