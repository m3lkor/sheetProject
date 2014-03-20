class Admin::HomeController < ApplicationController
  before_filter :authenticate_user!
  before_filter :ensure_admin
  
  protected
  
  #layout "admin"
  
  def ensure_admin
    unless current_user.is_admin?
      #head :not_found
      flash[:error] = 'You do not have permissions to access this area'
      redirect_to root_path 
    end
  end
end