class CreateCscorderlis < ActiveRecord::Migration
  def change
    create_table :cscorderlis do |t|
      t.integer :storeid
      t.string :mcode
      t.date :dte
      t.string :category
      t.string :itemnmbr
      t.string :itemdesc
      t.decimal :selprc
      t.string :uofm
      t.integer :qtyord
      t.string :h_ord
      t.string :h_avgord
      t.string :h_avgwst
      t.string :h_sugord
      
      t.timestamps null: false
    end
  end
end
