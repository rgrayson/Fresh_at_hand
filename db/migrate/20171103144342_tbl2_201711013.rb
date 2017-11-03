class Tbl2201711013 < ActiveRecord::Migration
  def change
   add_column :recipes, :ingredient_list, :text
  end
end
