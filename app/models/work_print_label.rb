class WorkPrintLabel < ActiveRecord::Base
    
  #user editable flds    
  validates_presence_of :label_name2, on: :update, message: 'Invalid/Missing Label Name'
  validates_numericality_of :sel_prc2,on: :update, greater_than: 0.01, message: 'Invalid Sell Price'  
  validates_numericality_of :copies, on: :update, greater_than: 0, message: 'Invalid/Missing Copies Entry'
  validates_presence_of :half_port2, on: :update, message: 'Invalid/Missing Portion Selection'
  validates_presence_of :ingredient_list2, on: :update, message: 'Invalid/Missing Ingredients'
  
end
