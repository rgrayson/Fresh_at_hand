class CreateCscorders < ActiveRecord::Migration
  def change
    create_table :cscorders do |t|
      t.integer :storeid
      t.string :ordsts
      t.datetime :submitted_dte
      t.string :submitted_by
      t.string :mcode
      t.date :dte

      t.timestamps null: false
    end
  end
end
