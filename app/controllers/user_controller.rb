class UserController < ApplicationController

def index
   @t=Mrktcstore.joins("INNER JOIN storeperms on storeperms.storeid = mrktcstores.storeid").where("user=?",session[:u])
end    


def show
 
end


end
