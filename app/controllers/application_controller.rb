class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :category_list
  
def category_list
  #source for category dropdown
   @category=Category.select("category_name", "id").order("category_name")
end  
  
end
