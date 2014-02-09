class AddUserIdAndGameIsToSheet < ActiveRecord::Migration
  def change
    add_column :sheets, :user_id, :integer
    add_column :sheets, :game_id, :integer
    add_index :sheets, :user_id
    add_index :sheets, :game_id
  end
end
