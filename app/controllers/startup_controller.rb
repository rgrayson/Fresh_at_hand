class StartupController < ApplicationController

#handles all login validation/routing
#can be replaced by differnet login process if needed

def index
   #perform any startup maintenance
   #in the future all tables will be updated nightly
   #by some method from our SQL tables
   
   #delete any session data
   session[:u]=nil
   session[:lt]=nil
   
   #update storename in Storeperm from data in Mrktcstore
   #cannot find way to make a simple join for this.
   @s=Storeperm.all
   @s.each do |x|
       x.storename="Unknown"
       x.save
       
       t= Mrktcstore.where("storeid=?", x.storeid)
       if t.any?
           t.each do |t2|
              x.storename=t2.storename
              x.save
           end      
       end
   end
end    


def login
    
   #capture params    
    u=params[:username]
    p=params[:password]
    lt=params[:ltyp]
   
   #render html: params and return
    
   #check for missing controls/values
      @e=0
      @msg=""
      if u==""
          @e=1
          @msg="Invalid/Missing Username."
      elsif p ==""
          @e=1
          @msg="Invalid/Missing Password."
      end
  
      if lt.present?
        if lt==""
            @e=1
            @msg="Invalid/Missing Login Type."
        end
      else
            @e=1
            @msg="Invalid/Missing Login Type."
      end
  
      if @e==1
         #missing data,
         #why do I have to pass instance variables?  They will not show up in view any other way?
        redirect_to root_path(e: @e, msg: @msg,u: u,p: p,ltyp: lt)and return
      end
      
  #validate login
  
  if lt=="User"
      #user login, look in Storeperm model for user/pw
      #@t becomes list of allowable stores for user/pw
      @t=Storeperm.where("login_user=? and pw=?",u,p)
      if @t.any?
          #found
          
          #store user in session
          session[:u]=u
          session[:lt]=lt
          
          redirect_to user_index_path(u: u,p: p) and return  
      else
            #not an admin user/pw
            @e=1
            @msg ="Username/Password not a User"
            redirect_to root_path(e: @e, msg: @msg,u: u,ltyp: lt) and return        
      end      
  else
      #admin
      #check to be sure user/pw is admin, then render view
        @t=Maintadmin.where("user=? and pw=?",u,p)
        if @t.any?
            #found
             
            #store user in session
            session[:u]=u
            session[:lt]=lt
             
            redirect_to admin_index_path(u: u, p: p) and return 
        else
        end 
  end 
  
  
end    





end
