class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_name
      t.integer :count_sheets, :default => 0
      t.boolean :is_active , :default => false

      t.timestamps
    end
  end
end
