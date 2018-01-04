class RecipeController < ApplicationController

  def index
    #set session[:category_def] if just changed
    #want to set this from index view but how?
    #ignore will be set below
    session[:category_def] = params[:category] unless params[:category].nil?

    #filter recipes based on session[:category]
    if session[:category_def] == 'All' or session[:category_def].nil?
      #Show all recipes
      @t_recipe = Recipe.all.order("catid","rid_desc")
      session[:category_def] = 'All'
    else
      #Filter by Category
      @t_recipe = Recipe.where("catid = ?", session[:category_def]).order("catid", "rid_desc")
    end
  end

  def create
    #renders to admin as they are only ones who can edit
    #adds new recipe
    tbl = Recipe.new
    tbl.rid = params[:rid]
    tbl.rid_typ = params[:rid_typ]
    tbl.rid_desc = params[:rid_desc]
    tbl.catid = params[:catid]
    if tbl.valid? == false
      @t_error = tbl.errors.messages
      render 'recipe/new'
    else
      tbl.save
      @t_error = 'saved'
      redirect_to admin_path(id:0, rid: params[:rid], typ:1)
    end
  end

  def new
    @t_recipe = Recipe.new
    @t_error = Recipe.where('rid = -100')
  end

  def show
    #capture params so they can be passed to view.
    typ = params[:typ]

    #set common recordsource
    @t_recipe = Recipe.where(rid: params[:rid])

    #direct to desired showx.html.erb based omn typ
    #this enables filtering of display flds
    if typ == "1"
      #print
      #have to use work table approach to keep values entered by user for print
      #separate from defualts.  Can find no other way?
      #clear work table
      WorkPrintLabel.delete_all
      #refill with Recipe data
      @t_recipe.each do |tbl|
         w = WorkPrintLabel.new
         w.rid = tbl.rid
         w.copies = nil
         w.label_name = tbl.rid_desc
         w.label_name2 = tbl.rid_desc
         w.scan_code = tbl.scan_code
         w.scan_code2 = tbl.scan_code
         w.sel_prc = tbl.sel_prc
         w.sel_prc2 = tbl.sel_prc
         w.special_notes2 = nil
         w.alg_egg = tbl.alg_egg
         w.alg_egg2 = tbl.alg_egg
         w.alg_shellfish = tbl.alg_shellfish
         w.alg_shellfish2 = tbl.alg_shellfish
         w.alg_fish = tbl.alg_fish
         w.alg_fish2 = tbl.alg_fish
         w.alg_soy = tbl.alg_soy
         w.alg_soy2 = tbl.alg_soy
         w.alg_milk = tbl.alg_milk
         w.alg_milk2 = tbl.alg_milk
         w.alg_treenuts = tbl.alg_treenuts
         w.alg_treenuts2 = tbl.alg_treenuts
         w.alg_peanuts = tbl.alg_peanuts
         w.alg_peanuts2 = tbl.alg_peanuts
         w.alg_wheat = tbl.alg_wheat
         w.alg_wheat2 = tbl.alg_wheat
         w.ingredient_list = tbl.ingredient_list
         w.ingredient_list2 = tbl.ingredient_list
         w.save
      end

      #set source for view
      @t_work  = WorkPrintLabel.last
      @t_error = WorkPrintLabel.where(rid: 0)
      render 'show1'
    elsif typ == "2"
      #ingredients, @t_recipe already set
      @t_recipe_ing = Recipeingredient.where("rid = ?",params[:rid]).order("rid_li")
      @t_reciepe_proc = Recipeprocedure.where("rid = ?",params[:rid]).order("rid_proc")
      render 'show2'
    elsif typ == "3" then
      #nutritionals, @t_recipe already set
      render 'show3'
    end
      #default will render recipe/show.html.erb
  end

end
