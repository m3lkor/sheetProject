class GdrModule < ActiveRecord::Base
  attr_accessible :game_id, :module_name, :module_type
  
  belongs_to :game
  has_many :sheets, :through => :sheet_game_modules
end
