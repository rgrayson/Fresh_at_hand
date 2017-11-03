class Tbl20171103 < ActiveRecord::Migration
  def change
    add_column :recipes, :catid, :string
  end
end
