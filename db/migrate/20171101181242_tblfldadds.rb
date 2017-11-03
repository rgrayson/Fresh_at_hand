class Tblfldadds < ActiveRecord::Migration
  def change
    add_column  :appconfigs, :pk, :integer
  end
end
