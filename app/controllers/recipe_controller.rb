class RecipeController < ApplicationController


def index
    
    #filter recipes based on params[:category]
    #this is set by recipe/index view
    if params[:category] == 'All' or params[:category].nil?
        #Show all recipes
        @t_recipe=Recipe.all.order("catid","rid_desc")
        @category_def='All'
    else
        #Filter by Category
        @t_recipe=Recipe.where("catid=?", params[:category]).order("catid","rid_desc")
        @category_def=params[:category]
    end     
    
end


def create
    
    #renders to admin as they are only ones who can edit
    #adds new recipe
        tbl= Recipe.new    
        tbl.rid=params[:rid]
        tbl.rid_typ=params[:rid_typ]
        tbl.rid_desc =params[:rid_desc]
        if tbl.valid? ==false
            #errors
            @t_error=tbl.errors.messages
            render 'recipe/new' and return
        else
            #save
            tbl.save
            @t_error='saved'
            redirect_to admin_path(id:0, rid: params[:rid], typ:1)
        end
end     

def new

     @t_error='saved'

end    


def show
    
  #capture params so they can be passed to view. 
    typ=params[:typ]
    
  #set common recordsource    
    @t_recipe=Recipe.where("rid=?",params[:rid])
  
  #direct to desired showx.html.erb based omn typ
  #this enables filtering of display flds
    if typ=="1"
        #print
            
        #have to use work table approach to keep values entered by user for print
        #separate from defualts.  Can find no other way?
        
        #clear work table
            WorkPrintLabel.delete_all()
          
        #refill with Recipe data
             @t_recipe.each do |tbl| 
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
            @t_work=WorkPrintLabel.all()
            @t_error=WorkPrintLabel.where("rid=0")
        
        render 'show1'
        
    elsif typ=="2"
        #ingredients, @t_recipe already set
       @t_recipe_ing=Recipeingredient.where("rid=?",params[:rid]).order("rid_li")
       @t_reciepe_proc=Recipeprocedure.where("rid=?",params[:rid]).order("rid_proc") 
       render 'show2'
    
    elsif typ=="3" then
        #nutritionals, @t_recipe already set
        render 'show3'
    
    end    
    
    #default will render recipe/show.html.erb 
    
end    

def update
    
    # called by Admin only
    #save/update recipe
    @t_recipe=Recipe.where("rid=?",params[:rid])
    @t_recipe.each do |tbl|    
        tbl.rid=params[:rid]
        tbl.rid_desc=params[:rid_desc]
        tbl.catid=params[:catid]
        tbl.scan_code=params[:scan_code]
        tbl.sel_prc=params[:sel_prc]
        tbl.ser_size=params[:ser_size]
        tbl.calories=params[:calories]
        tbl.tfat=params[:tfat]
        tbl.cfrmfat=params[:cfrmfat]
        tbl.satfat=params[:satfat]
        tbl.yld=params[:yld]
        tbl.batch_yld=params[:batch_yld]
        tbl.shelf_life=params[:shelf_life]
        tbl.alg_egg=params[:alg_egg]
        tbl.alg_shellfish=params[:alg_shellfish]
        tbl.alg_fish=params[:alg_fish]
        tbl.alg_soy=params[:alg_soy]
        tbl.alg_milk=params[:alg_milk]
        tbl.alg_treenuts=params[:alg_treenuts]
        tbl.alg_peanuts=params[:alg_peanuts]
        tbl.alg_wheat=params[:alg_wheat]
        tbl.ingredient_list=params[:ingredient_list]
       
        if tbl.valid? ==false
            #errors
            @t_recipe=Recipe.where("rid=?",params[:rid])
            @t_error=tbl.errors.messages
            render 'recipe/edit' and return
        else
            #ok to save
            tbl.save
            @t_error='saved'
            render 'admin/index' and return
        end
        
    end
    
end    




end
