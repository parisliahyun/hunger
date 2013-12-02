class AddColumnGameIdToRoundsGames < ActiveRecord::Migration
  def change
      change_table :rounds_games do |t|
      t.integer :game_id
    end
  end
end
