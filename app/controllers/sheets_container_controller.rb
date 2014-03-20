class SheetsContainerController < ApplicationController
  def index
     if user_signed_in?
       redirect_to sheets_path
     else
        flash[:notice] = 'You need to sign to see your charachter list'
        redirect_to new_user_session_path
     end
  end

end
