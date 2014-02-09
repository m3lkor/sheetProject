class SheetsContainerController < ApplicationController
  def index
     if user_signed_in?
       if not current_user.admin?
          uname = current_user.player_name.capitalize!
          @sheets = current_user.sheets.includes(:game)
       else
         flash[:notice] = 'Welcome Admin!'
          #redirect_to admin_index_sheets_containers_path
                    uname = current_user.player_name.capitalize!
          @sheets = current_user.sheets.includes(:game)
       end
     else
        flash[:notice] = 'You need to sign to see your charachter list'
        redirect_to new_user_session_path
     end
  end
    
end
