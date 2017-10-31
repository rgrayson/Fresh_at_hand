class Recipe20171031 < ActiveRecord::Migration
  def change
  add_column  :recipes, :ser_size, :string
  add_column  :recipes, :calories, :string
  
  end
end
