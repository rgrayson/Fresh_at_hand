class RecipeController < ApplicationController

def index
    #Show all recipes
    @t=Recipe.all.order("catid")
    
end

def show
    
  #capture params so they can be passed to view. 
    typ=params[:typ]
    
  #set recordsource    
    @t=Recipe.where("rid=?",params[:rid])
  
  #direct to desired showx.html.erb based omn typ
  #this enables filtering of display flds
    if typ=="1"
        #print
        render :show1
    elsif typ=="2"
        #ingredients
       @t2=Recipeingredient.where("rid=?",params[:rid]).order("rid_li")
       @t3=Recipeprocedure.where("rid=?",params[:rid]).order("rid_proc") 
       render :show2
    elsif typ=="3" then
        #nutritionals
        render :show3
    end    
    
    #default will render recipe/show.html.erb 
    
end    

def update

    #called from "Print labels".  Will will take data form form
    #and insert into work table used for printing, then envoke "print"
    
    render html: params and return
    
    

end    

end
