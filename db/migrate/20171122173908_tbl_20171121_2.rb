class Tbl201711212 < ActiveRecord::Migration
  def change
  
  add_column :work_print_labels, :acnt_name2, :string
  add_column :work_print_labels, :address_full2, :string
  
  end
end
