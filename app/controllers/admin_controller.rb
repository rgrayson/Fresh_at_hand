class AdminController < ApplicationController

def index

    #filter recipes based on params[:category]
    #this is set by recipe/index view
    @t_error="no errors"
    if params[:category] == 'All' or params[:category].nil?
        #Show all recipes
        @t_recipe=Recipe.all.order("catid","rid_desc")
        @category_def='All'
    else
        #Filter by Category
        @t_recipe=Recipe.where("catid=?", params[:category]).order("catid","rid_desc")
        @category_def=params[:category]
    end     

    #render admin/index
end


def show
    
    # redirects to correct view based on typ
    #redirct to desired view based on typ
    typ=params[:typ]
    if typ=="1"
        #edit recipe data
        @t_recipe=Recipe.where("rid=?",params[:rid])
        @t_error=Recipe.where("rid=-1")
        render 'recipe/edit' and return
    end
    
    
   
end

end
