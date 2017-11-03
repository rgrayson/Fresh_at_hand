class CreateRecipeingredients < ActiveRecord::Migration
  def change
    create_table :recipeingredients do |t|
      t.integer :rid
      t.integer :rid_li
      t.string :supc
      t.string :desc
      t.string :prep_notes
      t.string :amount
      t.string :uofm
      t.string :cost

      t.timestamps null: false
    end
  end
end
