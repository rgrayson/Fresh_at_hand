class Removeflds < ActiveRecord::Migration
  def change
    remove_column :mrktcstores, :user
    remove_column :mrktcstores, :pw
  end
end
