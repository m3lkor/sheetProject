class Sheet < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :player_name, :charachter_name, :sheet_game, :game_id, :user_id
  validates :player_name, :charachter_name, presence: true
  
  belongs_to :user
  belongs_to :game
  
  has_many :gdr_modules, :through => :sheet_game_modules 
end
