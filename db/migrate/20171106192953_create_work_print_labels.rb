class CreateWorkPrintLabels < ActiveRecord::Migration
  def change
    create_table :work_print_labels do |t|
      
      t.string :label_name
      t.string :label_name2
      t.string :scan_code
      t.string :scan_code2
      t.string :sel_prc
      t.decimal :sel_prc2
      t.string :half_port
      t.string :half_port2
      t.string :special_notes2
      t.string :alg_egg
      t.string :alg_egg2
      t.string :alg_shellfish
      t.string :alg_shellfish2
      t.string :alg_fish
      t.string :alg_fish2
      t.string :alg_soy
      t.string :alg_soy2
      t.string :alg_milk
      t.string :alg_milk2
      t.string :alg_treenuts
      t.string :alg_treenuts2
      t.string :alg_peanuts
      t.string :alg_peanuts2
      t.string :alg_wheat
      t.string :alg_wheat2
      t.string :ingredients_list
      t.string :ingredients_list2
      
      t.timestamps null: false
    end
  end
end
