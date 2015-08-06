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

ActiveRecord::Schema.define(version: 20150806033355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "series_id"
    t.integer  "venue_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "meetup_id"
    t.boolean  "archived"
    t.string   "registration_url"
  end

  add_index "events", ["series_id"], name: "index_events_on_series_id", using: :btree
  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "series", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.boolean  "is_current"
    t.boolean  "is_future"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "message"
    t.string   "img_url"
  end

  add_index "sponsors", ["user_id"], name: "index_sponsors_on_user_id", using: :btree

  create_table "venues", force: :cascade do |t|
    t.text     "address"
    t.datetime "opens_at"
    t.datetime "closes_at"
    t.integer  "capacity"
    t.boolean  "is_accessible"
    t.integer  "user_id"
    t.text     "description"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "venues", ["user_id"], name: "index_venues_on_user_id", using: :btree

end
