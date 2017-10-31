class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :rid
      t.string :rid_typ
      t.string :rid_desc

      t.timestamps null: false
    end
  end
end
