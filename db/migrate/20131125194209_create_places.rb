class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string "type", null: false
      t.string "name", null: false
      t.timestamps
    end
  end
end
