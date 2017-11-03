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
   
  
end    


def login
    
   #capture params    
    u=params[:username]
    p=params[:password]
    
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
  
     
      if @e==1
         #missing data,
         #why do I have to pass instance variables?  They will not show up in view any other way?
        redirect_to root_path(e: @e, msg: @msg,u: u,p: p)and return
      end
      
  #validate login
  
  #set session variables
   session[:u]=u   
  
   t=Appconfig.where("pk=1")
   t.each do |tbl|
     session[:last_update]=tbl.last_update
   end
   
  redirect_to recipe_index_path
  
  
end    





end
