class Tblmods20171102 < ActiveRecord::Migration
  def change
     rename_column :recipes, :yeild, :yield
      rename_column :recipes, :batch_yeild, :batch_yield
  end
end
