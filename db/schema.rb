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

ActiveRecord::Schema.define(version: 2021_01_31_165402) do

  create_table "achieves", force: :cascade do |t|
    t.string "description", default: "None"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamer_achieves", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gamer_id"
    t.integer "match_id"
    t.integer "achieve_id"
    t.index ["achieve_id"], name: "index_gamer_achieves_on_achieve_id"
    t.index ["gamer_id"], name: "index_gamer_achieves_on_gamer_id"
    t.index ["match_id"], name: "index_gamer_achieves_on_match_id"
  end

  create_table "gamers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.index ["team_id"], name: "index_gamers_on_team_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "location"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
