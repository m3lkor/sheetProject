class AddGameIdToGdrModules < ActiveRecord::Migration
  def change
    add_column :gdr_modules, :game_id, :integer
  end
end
