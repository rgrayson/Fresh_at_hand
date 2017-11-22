class CreateAvidivs < ActiveRecord::Migration
  def change
    create_table :avidivs do |t|
      t.string :div_name
      
      t.timestamps null: false
    end
  end
end
