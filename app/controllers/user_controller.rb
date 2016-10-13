class UserController < ApplicationController

def index
   @t=Mrktcstore.joins("INNER JOIN storeperms on storeperms.storeid = mrktcstores.storeid").where("user=? and pw=?",params[:u],params[:p])
end    


end
