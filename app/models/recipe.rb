class Recipe < ActiveRecord::Base

#user editable flds    
  validates_uniqueness_of :rid,messag: 'Recipe ID already in system. Please check and try again' 
  validates_numericality_of :rid,greater_than: 0, message: 'Invalid Recipe Id, must be a postive integer' 
  
  validates_presence_of :rid_typ, on: :update, message: 'Invalid/Missing Recipe Type'
  validates_presence_of :rid_desc, on: :update, message: 'Invalid/Missing Recipe Name/Description'
  # validates_presence_of :ser_size, on: :update, message: 'Invalid/Missing Serving Size'
  # validates_presence_of :calories, on: :update, message: 'Invalid/Missing Calories'
  # validates_presence_of :tfat, on: :update, message: 'Invalid/Missing Total Fat'
  # validates_presence_of :cfrmfat, on: :update, message: 'Invlaid/Missing Calories From Fat'
  # validates_presence_of :satfat, on: :update, message: 'Invalid/Missing Saturated Fat'
  
  validates_presence_of :catid, on: :update, message: 'Invalid/Missing Category'
  validates_presence_of :ingredient_list, on: :update, message: 'Invalid/Missing Ingredient List'
  validates_presence_of :scan_code, on: :update, message: 'Invalid/Missing Scan Code'
  validates_numericality_of :sel_prc, on: :update, greater_than: 0.01, message: 'Invalid Sell Price' 
  
  
end
