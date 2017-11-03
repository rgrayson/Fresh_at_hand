class CreateAppconfigs < ActiveRecord::Migration
  def change
    create_table :appconfigs do |t|
      t.string :last_update

      t.timestamps null: false
    end
  end
end
