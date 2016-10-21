class Tablechanges < ActiveRecord::Migration
  def change
  
  remove_column :cscorderlis,:mcode
  remove_column :cscorderlis,:dte
  add_column  :cscorderlis, :cscorders_id, :integer
  add_column  :cscorderlis, :mrktc_only, :integer
  add_column  :cscorderlis, :h_range, :string
  
  add_column  :cscorders, :prod_id, :integer
  add_column  :cscorders, :dow, :string
  add_column  :cscorders, :ordsts_txt, :string
  
  end
end
