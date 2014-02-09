class Game < ActiveRecord::Base
  attr_accessible :game_name, :count_sheets, :is_active
  #validates :game_name, presence: true 
  has_many :sheets
end
