class CreateSheetGameModules < ActiveRecord::Migration
  def change
    create_table :sheet_game_modules do |t|
      t.integer :mod_sheet
      t.integer :mod_game

      t.timestamps
    end
  end
end
