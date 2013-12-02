class AddColumnGameIdToEvents < ActiveRecord::Migration
  def change
      change_table :events do |t|
      t.integer :game_id
    end
  end
end
