# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131126184429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "escorts", force: true do |t|
    t.integer  "person_id"
    t.integer  "tribute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
  end

  create_table "games", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "type",        null: false
    t.string   "name",        null: false
    t.integer  "district"
    t.boolean  "is_tribute"
    t.boolean  "is_victor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.integer  "age"
    t.integer  "district_id"
  end

  add_index "people", ["district_id"], name: "index_people_on_district_id", using: :btree

  create_table "places", force: true do |t|
    t.string   "type",       null: false
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reapings_games", force: true do |t|
    t.integer  "game_id"
    t.integer  "place_id"
    t.integer  "tribute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds_games", force: true do |t|
    t.integer "place_id"
    t.integer "tribute_id"
    t.boolean "has_died"
    t.string  "skills"
    t.integer "score"
    t.boolean "is_victor"
  end

  create_table "sponsors_tributes", force: true do |t|
    t.integer  "person_id"
    t.integer  "tribute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
