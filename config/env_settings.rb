#Used for account settings, passwords, api keys/values etc.
#Sets the following environment variables

#******************************************************************
#Be sure to add this file to .gitignore so it will NOT
#be pushed to Github (for security)
#******************************************************************

if Rails.env.production?
   ENV['DB_USERNAME']='aviuser'
   ENV['DB_PASSWORD']='avitest'
else
   #use test
   ENV['DB_USERNAME']='aviuser'
   ENV['DB_PASSWORD']='avitest'
end   
