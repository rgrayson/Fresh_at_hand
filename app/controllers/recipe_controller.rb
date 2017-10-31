class RecipeController < ApplicationController

def index
    #Show all recipes
    @t=Recipe.all
end

def show
    
    render 

end    

end
