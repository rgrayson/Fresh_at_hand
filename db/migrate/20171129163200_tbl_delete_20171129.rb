class TblDelete20171129 < ActiveRecord::Migration
  def change
    drop_table :app_configs if table_exists?(:app_configs)
  end
end
