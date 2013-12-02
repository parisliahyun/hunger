class AddColumnGameIdToPeople < ActiveRecord::Migration
  def change
      change_table :people do |t|
      t.integer :game_id
    end
  end
end
