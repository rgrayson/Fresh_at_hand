class UserController < ApplicationController

def index
   @t=Mrktcstore.joins("INNER JOIN storeperms on storeperms.storeid = mrktcstores.storeid").where("user=?",session[:u])
end    


def show
 @t=Cscorder.where("storeid=?", params[:storeid]).order("dte desc")
 if @t.any?
     #records found, ok to render view
 else
     #no records redirect back
 end        
end


end
