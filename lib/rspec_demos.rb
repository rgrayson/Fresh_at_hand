class RspecDemos
  
  def self.add(input)
    if input.empty?
      0
    else
      input.to_i
    end
  end
  
  def self.tst1(input)
    if input=="tst1"
        1
    else    
        0
    end    
  end  
  
  def self.tst2(input)
   # @t_recipe=recipes.where("rid_desc=?",input)
   @t_recipe="xxx"
    if @t_recipe=='xxx'
        1
    else    
        0
    end    
  end  

end