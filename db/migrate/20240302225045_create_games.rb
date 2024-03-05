class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
