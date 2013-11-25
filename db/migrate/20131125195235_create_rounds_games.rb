class CreateRoundsGames < ActiveRecord::Migration
  def change
    create_table :rounds_games do |t|
      t.integer "place_id"
      t.integer "tribute_id"
      t.boolean "has_died"
      t.string "skills"
      t.integer "score"
      t.boolean "is_victor"
    end
  end
end
