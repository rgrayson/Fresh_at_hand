class AddFieldnameToMrktcstore < ActiveRecord::Migration
  def change
    add_column :mrktcstores, :pw, :string
    rename_column :mrktcstores, :usercode, :user
  end
end
