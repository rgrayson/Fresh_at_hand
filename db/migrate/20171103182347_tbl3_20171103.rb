class Tbl320171103 < ActiveRecord::Migration
  def change
    add_column :recipes, :scan_code, :text
  end
end
