class Tablemods2 < ActiveRecord::Migration
  def change
     rename_column :cscorderlis, :cscorders_id, :cscorder_id
  end
end
