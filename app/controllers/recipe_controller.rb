class RecipeController < ApplicationController

def index
    
    #filter recipes based on params[:category]
    #this is set by recipe/index view
    if params[:category] == 'All' or params[:category].nil?
        #Show all recipes
        @t=Recipe.all.order("catid","rid_desc")
        @category_def='All'
    else
        #Filter by Category
        @t=Recipe.where("catid=?", params[:category]).order("catid","rid_desc")
        @category_def=params[:category]
    end     
    
    #source for category dropdown
    @category=Category.select("category_name", "id").order("category_name")
   
end


def show
    
  #capture params so they can be passed to view. 
    typ=params[:typ]
    
  #set common recordsource    
    @t=Recipe.where("rid=?",params[:rid])
  
  #direct to desired showx.html.erb based omn typ
  #this enables filtering of display flds
    if typ=="1"
        #print
            
        #have to use work talbe approach to keep values entered by user for print
        #separate from defualts.  Can find no other way?
        
        #clear work table
            WorkPrintLabel.delete_all()
          
        #refill with Recipe data
             @t.each do |tbl| 
                
                 w = WorkPrintLabel.new
                 w.rid=tbl.rid
                 w.copies=nil
                 w.label_name=tbl.rid_desc
                 w.label_name2=tbl.rid_desc
                 w.scan_code=tbl.scan_code
                 w.scan_code2=tbl.scan_code
                 w.sel_prc=tbl.sel_prc
                 w.sel_prc2=tbl.sel_prc
                 w.special_notes2=nil
                 w.alg_egg=tbl.alg_egg
                 w.alg_egg2=tbl.alg_egg
                 w.alg_shellfish=tbl.alg_shellfish
                 w.alg_shellfish2=tbl.alg_shellfish
                 w.alg_fish=tbl.alg_fish
                 w.alg_fish2=tbl.alg_fish
                 w.alg_soy=tbl.alg_soy
                 w.alg_soy2=tbl.alg_soy
                 w.alg_milk=tbl.alg_milk
                 w.alg_milk2=tbl.alg_milk
                 w.alg_treenuts=tbl.alg_treenuts
                 w.alg_treenuts2=tbl.alg_treenuts
                 w.alg_peanuts=tbl.alg_peanuts
                 w.alg_peanuts2=tbl.alg_peanuts
                 w.alg_wheat=tbl.alg_wheat
                 w.alg_wheat2=tbl.alg_wheat
                 w.ingredient_list=tbl.ingredient_list
                 w.ingredient_list2=tbl.ingredient_list
                 w.save
            end    
            
        #set source for view
            @t2=WorkPrintLabel.all()
            @terror=WorkPrintLabel.where("rid=0")
        
        render 'show1'
        
    elsif typ=="2"
        #ingredients
       @t2=Recipeingredient.where("rid=?",params[:rid]).order("rid_li")
       @t3=Recipeprocedure.where("rid=?",params[:rid]).order("rid_proc") 
       render 'show2'
    elsif typ=="3" then
        #nutritionals
        render 'show3'
    end    
    
    #default will render recipe/show.html.erb 
    
end    

def update

    #called from show1/"Print labels".  Will will take data from
    #and insert into work table used for printing, then envoke "print"
    
    #save all to work table
    @t2=WorkPrintLabel.all()
    @t2.each do |tbl| 
      tbl.copies = params[:copies]
      tbl.label_name2 = params[:label_name2]
      tbl.sel_prc2 = params[:sel_prc2]
      tbl.half_port2= params[:half_port2]
      tbl.special_notes2=params[:special_notes2]
      tbl.alg_egg2=params[:alg_egg2]
      tbl.alg_shellfish2=params[:alg_shellfish2]
      tbl.alg_fish2=params[:alg_fish2]
      tbl.alg_soy2=params[:alg_soy2]
      tbl.alg_milk2=params[:alg_milk2]
      tbl.alg_treenuts2=params[:alg_treenuts2]
      tbl.alg_peanuts2=params[:alg_peanuts2]
      tbl.alg_wheat2=params[:alg_wheat2]
      tbl.ingredient_list2=params[:ingredient_list2] 
      r=tbl.valid?
      if r==false
          #errors detected
          @t=Recipe.where("rid=?",params[:rid])
          @terror=tbl.errors.messages
          render 'show1' and return
      else
          #ok to save
          tbl.save
          @terror='saved'
      end    
      
    end
    
    render 'print_label'
    
end    

end
