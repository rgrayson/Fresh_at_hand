class Work20171106 < ActiveRecord::Migration
  def change
  
  rename_column :work_print_labels, :ingredients_list, :ingredient_list
  rename_column :work_print_labels, :ingredients_list2, :ingredient_list2
  
  end
end
