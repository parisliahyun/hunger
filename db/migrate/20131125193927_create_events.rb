class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string "type", null: false
      t.string "name", null: false
      t.timestamps
    end
  end
end
