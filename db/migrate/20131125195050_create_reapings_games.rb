class CreateReapingsGames < ActiveRecord::Migration
  def change
    create_table :reapings_games do |t|
      t.integer "game_id"
      t.integer "place_id"
      t.integer "tribute_id"
      t.timestamps
    end
  end
end
