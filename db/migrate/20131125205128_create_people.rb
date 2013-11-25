class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    t.string   "type", null: false
    t.string   "name", null: false
    t.integer  "district"
    t.boolean  "is_tribute"
    t.boolean  "is_victor"
    t.datetime "created_at"
    t.datetime "updated_at"
    end
  end
end
