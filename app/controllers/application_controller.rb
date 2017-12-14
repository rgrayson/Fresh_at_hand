class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # set global lists for dropdowns
  before_action :category_list
  before_action :div_list
  before_action :accnt_list

  def category_list
    #source for category dropdown
    @category = Category.select('category_name', 'id').order('category_name')
  end

  def div_list
    @div_list = Avidiv.select('div_name','id').order('div_name')
  end

  def accnt_list
    @acnt_list = Accntlist.select('acnt_name','div','id').order('acnt_name')
  end

end
