class TableAdds20171101 < ActiveRecord::Migration
  def change
    create_table :app_configs do |t|
        t.datetime :last_update
        t.timestamps null: false
      end
  end
  
  def change
    create_table :recipeingredients do |t|
        t.integer :rid
        t.integer :rid_li
        t.string :supc
        t.string :desc
        t.string :prep_notes
        t.string :amount
        t.string :uofm
        t.decimal :cost
    end
  end
    
  def change 
    create_table :recipeprocedures do |t|
      t.integer :rid
      t.integer :rid_proc
      t.string :rid_proc_desc
      end
  end
  
  
  def change
    add_column  :recipes, :tfat, :string
    add_column  :recipes, :cfrmfat, :string
    add_column  :recipes, :satfat, :string
    add_column  :recipes, :sel_prc, :string
    add_column  :recipes, :yeild, :string
    add_column  :recipes, :batch_yeild, :string
    add_column  :recipes, :shelf_life, :string
    add_column  :recipes, :alg_egg, :string
    add_column  :recipes, :alg_shellfish, :string
    add_column  :recipes, :alg_fish, :string
    add_column  :recipes, :alg_soy, :string
    add_column  :recipes, :alg_milk, :string
    add_column  :recipes, :alg_treenuts, :string
    add_column  :recipes, :alg_peanuts, :string
    add_column  :recipes, :alg_wheat, :string
  end   
  
  
  
  
  
end
