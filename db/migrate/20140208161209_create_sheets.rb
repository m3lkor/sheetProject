class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :player_name
      t.string :charachter_name
      t.string :sheet_game
      t.timestamps
    end
  end
end
