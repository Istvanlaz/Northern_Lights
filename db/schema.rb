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

ActiveRecord::Schema.define(version: 2020_02_18_155522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dress_codes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "landings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lifts", force: :cascade do |t|
    t.string "first_name"
    t.string "family_name"
    t.integer "places_available"
    t.string "contact"
    t.string "rallying_point"
    t.time "departure"
    t.time "return"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name"
    t.string "family_name"
    t.string "contact"
    t.integer "places"
    t.boolean "aller"
    t.boolean "retour"
    t.bigint "lift_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lift_id"], name: "index_passengers_on_lift_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "passengers", "lifts"
end
