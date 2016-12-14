class Removeflds20161213 < ActiveRecord::Migration
  def change
     remove_column :cscorders, :ordsts_txt
  end
end
