class CreateMrktcstores < ActiveRecord::Migration
  def change
    create_table :mrktcstores do |t|
      t.integer :storeid
      t.string :storename
      t.string :locncode
      t.string :fld
      t.string :flddesc
      t.integer :sub
      t.string :subdesc
      t.string :usercode

      t.timestamps null: false
    end
  end
end
