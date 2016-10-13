class StartupController < ApplicationController

#handles all login validation/routing
#can be replaced by differnet login process if needed

def login
    
   #capture params    
    u=params[:username]
    p=params[:password]
    lt=params[:ltyp]
    
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
      @t=Storeperm.where("user=? and pw=?",u,p)
      if @t.any?
          #found
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
             redirect_to admin_index_path(u: u, p: p) and return 
        else
        end 
  end 
  
  
end    





end
