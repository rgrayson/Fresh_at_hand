class Tlb320171102 < ActiveRecord::Migration
  def change
  rename_column :recipeprocedures, :rid_prod, :rid_proc
  end
end
