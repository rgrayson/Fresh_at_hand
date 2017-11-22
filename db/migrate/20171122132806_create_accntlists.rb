class CreateAccntlists < ActiveRecord::Migration
  def change
    create_table :accntlists do |t|
       t.string :div
       t.string :acnt_name
       t.string :address
       t.string :city
       t.string :state
       t.string :zip
       t.string :produced_by
      
      t.timestamps null: false
    end
  end
end
