class Tbl21071201 < ActiveRecord::Migration
  def change
    add_column :recipes, :calfrmsatfat, :string
    add_column :recipes, :transfat, :string
    add_column :recipes, :cholesterol, :string
    add_column :recipes, :sodium, :string
    add_column :recipes, :totalcarb, :string
    add_column :recipes, :fiber, :string
    add_column :recipes, :sugar, :string
    add_column :recipes, :protein, :string
    add_column :recipes, :productnum, :string
  end
end
