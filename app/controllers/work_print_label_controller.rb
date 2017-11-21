class WorkPrintLabelController < ApplicationController

def update

    #called from show1/"Print labels".  Will will take data from
    #and insert into work table used for printing, then envoke "print"
    
    #save all to work table
    @t_work=WorkPrintLabel.all()
    @t_work.each do |tbl| 
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
      tbl.ingredient_list2=params[:ingredient_list] 
      r=tbl.valid?
      if r==false
          #errors detected
          @t_recipe=Recipe.where("rid=?",params[:rid])
          @t_error=tbl.errors.messages
          render 'recipe/show1' and return
      else
          #ok to save
          tbl.save
          @t_error='saved'
      end    
      
    end
    
    render 'print_label'
    
end    




end
