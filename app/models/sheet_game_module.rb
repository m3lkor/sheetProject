class SheetGameModule < ActiveRecord::Base
  attr_accessible :mod_game, :mod_sheet
  
  belongs_to :game
  belong_to :sheet
  
end
