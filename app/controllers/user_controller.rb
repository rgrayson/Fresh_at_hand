class UserController < ApplicationController

def index
   @t=Mrktcstore.joins("INNER JOIN storeperms on storeperms.storeid = mrktcstores.storeid").where("user=?",session[:u])
end    


def show
 
 #render html: [params] and return
 
 @t=Cscorder.where("storeid=?", params[:storeid]).order("dte desc")
 if @t.any?
     #records found, ok to render view
    
    #set session varables..this is only place in app
    #to set store params
    session[:storeid]=params[:storeid]
    session[:storename]=params[:storename]
    
 else
     #no records redirect back
     redirect_to(:back)
 end        
end


end
