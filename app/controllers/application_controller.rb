class ApplicationController < ActionController::Base
  
  protect_from_forgery
  protected 
  
  def after_sign_in_path_for(user)
    if user.is_admin?
      admin_sheets_path
    else
      sheets_path
    end
  end
  
end
