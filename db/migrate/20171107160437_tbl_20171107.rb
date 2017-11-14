class Tbl20171107 < ActiveRecord::Migration
  def change
  
    add_column :work_print_labels, :rid, :integer
    add_column :work_print_labels, :copies, :integer
  
  end
end
