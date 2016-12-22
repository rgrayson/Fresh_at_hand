class Tblmods3 < ActiveRecord::Migration
  def change
    rename_column :storeperms, :user, :login_user
  end
end
