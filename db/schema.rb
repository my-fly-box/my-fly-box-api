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

ActiveRecord::Schema.define(version: 2020_07_18_211819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catches", force: :cascade do |t|
    t.string "species"
    t.string "image", default: "N/A"
    t.integer "length"
    t.integer "weight"
    t.string "location"
    t.bigint "fly_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fly_id"], name: "index_catches_on_fly_id"
  end

  create_table "flies", force: :cascade do |t|
    t.text "name"
    t.integer "size"
    t.text "color"
    t.text "category"
    t.integer "amount"
    t.boolean "favorited?", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "catches", "flies"
end
