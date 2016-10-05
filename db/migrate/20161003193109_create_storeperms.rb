class CreateStoreperms < ActiveRecord::Migration
  def change
    create_table :storeperms do |t|
      t.integer :storeid
      t.string :user
      t.string :pw

      t.timestamps null: false
    end
  end
end
