

class Admin::SheetsController < Admin::HomeController
  
  def index
    @sheets = Sheet.all
  end
end
