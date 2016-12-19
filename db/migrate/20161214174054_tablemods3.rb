class Tablemods3 < ActiveRecord::Migration
  def change
    rename_column :cscorderlis, :newqty, :qtynew
  end
end
