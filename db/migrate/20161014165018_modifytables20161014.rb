class Modifytables20161014 < ActiveRecord::Migration
  def change
    add_column  :storeperms, :storename, :string
  end
end
