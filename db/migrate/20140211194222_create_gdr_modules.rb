class CreateGdrModules < ActiveRecord::Migration
  def change
    create_table :gdr_modules do |t|
      t.string :module_name
      t.integer :module_game
      t.integer :module_type

      t.timestamps
    end
  end
end
