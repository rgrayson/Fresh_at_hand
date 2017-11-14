class Tbl201711072 < ActiveRecord::Migration
  def change
  
   remove_column :recipes, :sel_prc
   add_column :recipes, :sel_prc, :decimal
   
  
  end
end
