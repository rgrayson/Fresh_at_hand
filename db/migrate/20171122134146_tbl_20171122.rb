class Tbl20171122 < ActiveRecord::Migration
  def change
 
  add_column :work_print_labels, :div2, :string
  add_column :work_print_labels, :produced_by2, :string
 
 end
end
