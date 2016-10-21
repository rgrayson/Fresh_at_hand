class AdminController < ApplicationController

def index
   #set Store permissions list
   @storeper = Storeperm.all.order("user, pw")
   
   #set Store list
   @storelst= Mrktcstore.all.order("storename")
   
   #render index.html.rb
   
end    

def show
end    

def create

    #adds/creates new user to Storeperm (permissions)
    
    #capture params
        storeid=params[:adduser][:storeid]
        user= params[:adduser][:user]
        pw= params[:adduser][:pw]
    
    
    #vaildate data from view
        err=0
        msg=""
        
        if storeid=="" 
            err=1
            msg="Invalid/missing StoreId"
        elsif user==""
            err=1
            msg="Invalid/missing User"
        elsif pw=="" 
            err=1
            msg="Invalid/missing Password"    
        end
    
        if err==1
            #missing data,
            #why do I have to pass instance variables?  They will not show up in view any other way?
            redirect_to admin_index_path(e: err, msg: msg,s: storeid, u: user, p: pw)and return
        end
    
    #check to see if store/user/pw already exists
        t=Storeperm.where("storeid=? and user=? and pw=?", storeid, user, pw)
        if t.any?
            #already in
            msg="Storeid/User/Pw already exists."
            redirect_to admin_index_path(e: err, msg: msg,s: storeid, u: user, p: pw)and return
        end        
    
    #if here ok to add new user, refresh
        @t=Storeperm.new
        @t.storeid=storeid
        @t.user=user
        @t.pw=pw
        @t.save
        redirect_to admin_index_path(e: err, msg: msg,s: storeid, u: user, p: pw)and return

end    


def destroy
   t=Storeperm.find(params[:id])
   t.destroy
   redirect_to admin_index_path
end    



end
