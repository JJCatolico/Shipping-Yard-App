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

ActiveRecord::Schema.define(version: 20170824181401) do

  create_table "jobs", force: :cascade do |t|
    t.text "description"
    t.string "origin"
    t.string "destination"
    t.float "cost"
    t.integer "containers"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs_ships", id: false, force: :cascade do |t|
    t.integer "job_id", null: false
    t.integer "ship_id", null: false
    t.index ["job_id", "ship_id"], name: "index_jobs_ships_on_job_id_and_ship_id"
    t.index ["ship_id", "job_id"], name: "index_jobs_ships_on_ship_id_and_job_id"
  end

  create_table "ships", force: :cascade do |t|
    t.integer "capacity"
    t.string "location"
    t.string "name"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
