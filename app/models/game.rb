class Game < ActiveRecord::Base
  attr_accessible :game_name, :count_sheets, :is_active
  #validates :game_name, presence: true 
  has_many :sheets
  has_many :gdr_modules
  

  scope :actives, where(:is_active => true)
end
