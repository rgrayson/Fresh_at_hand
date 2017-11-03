class CreateRecipeprocedures < ActiveRecord::Migration
  def change
    create_table :recipeprocedures do |t|
      t.integer :rid
      t.integer :rid_prod
      t.string :rid_proc_desc

      t.timestamps null: false
    end
  end
end
