class CreateMaintadmins < ActiveRecord::Migration
  def change
    create_table :maintadmins do |t|
      t.string :user
      t.string :pw

      t.timestamps null: false
    end
  end
end
