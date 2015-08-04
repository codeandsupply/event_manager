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

ActiveRecord::Schema.define(version: 20150804195637) do

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "series_id"
    t.integer  "venue_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "meetup_id"
    t.boolean  "archived"
  end

  add_index "events", ["series_id"], name: "index_events_on_series_id"
  add_index "events", ["venue_id"], name: "index_events_on_venue_id"

  create_table "series", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "venues", force: true do |t|
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

  add_index "venues", ["user_id"], name: "index_venues_on_user_id"

end
