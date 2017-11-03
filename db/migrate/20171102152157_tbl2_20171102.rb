class Tbl220171102 < ActiveRecord::Migration
  def change
  rename_column :recipes, :yield, :yld
  rename_column :recipes, :batch_yield, :batch_yld
  
  end
end
