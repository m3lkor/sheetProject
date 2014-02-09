class DropSheetGameToSheets < ActiveRecord::Migration
  def up
     remove_column :sheets, :sheet_game
  end
end
