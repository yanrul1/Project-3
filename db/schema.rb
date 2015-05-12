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

ActiveRecord::Schema.define(version: 20150512092502) do

  create_table "conditions", force: :cascade do |t|
    t.string   "cond"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "observation_id"
  end

  add_index "conditions", ["observation_id"], name: "index_conditions_on_observation_id"

  create_table "locations", force: :cascade do |t|
    t.string   "locationID"
    t.float    "lattitude"
    t.float    "longitude"
    t.integer  "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observations", force: :cascade do |t|
    t.datetime "updatetime"
    t.date     "updateDate"
    t.string   "recordtype"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "location_id"
  end

  add_index "observations", ["location_id"], name: "index_observations_on_location_id"

  create_table "precipitations", force: :cascade do |t|
    t.float    "precip"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "observation_id"
  end

  add_index "precipitations", ["observation_id"], name: "index_precipitations_on_observation_id"

  create_table "temperatures", force: :cascade do |t|
    t.float    "temp"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "observation_id"
  end

  add_index "temperatures", ["observation_id"], name: "index_temperatures_on_observation_id"

  create_table "winds", force: :cascade do |t|
    t.float    "windspeed"
    t.string   "winddirectionString"
    t.integer  "winddirectionDegree"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "observation_id"
  end

  add_index "winds", ["observation_id"], name: "index_winds_on_observation_id"

end
