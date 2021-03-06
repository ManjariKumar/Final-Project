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

ActiveRecord::Schema.define(version: 20140715002711) do

  create_table "institutions", force: true do |t|
    t.string   "inst_id"
    t.string   "inst_name"
    t.string   "inst_add1"
    t.string   "inst_add2"
    t.string   "inst_city"
    t.string   "inst_state"
    t.integer  "inst_zip"
    t.string   "inst_phone"
    t.string   "inst_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "lessons", force: true do |t|
    t.string   "lesson_id"
    t.string   "name"
    t.text     "description"
    t.string   "weekday"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "min_age"
    t.integer  "max_age"
    t.string   "institution_id"
    t.text     "pre_requisite"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner"
    t.string   "category"
    t.string   "image"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
