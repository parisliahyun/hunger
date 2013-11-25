class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string "type", null: false
      t.string "name", null: false
      t.integer "district"
      t.boolean "is_tribute", default: false
      t.boolean "is_victor", default: false
      t.timestamps
    end
  end
end
