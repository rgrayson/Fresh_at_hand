class StartupController < ApplicationController

def login
   render "login.html.erb"
   
end    

def maintenance
    render 'maintenance.html.erb'
end    


end
