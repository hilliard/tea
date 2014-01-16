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

ActiveRecord::Schema.define(version: 20131129155555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "priorities", force: true do |t|
    t.string   "priority_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "risks", force: true do |t|
    t.string   "risk_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "status_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "step_statuses", force: true do |t|
    t.string   "stepstatus_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", force: true do |t|
    t.integer  "step_number"
    t.text     "action"
    t.text     "expected_result"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "steps", ["step_number"], name: "index_steps_on_step_number", unique: true, using: :btree

  create_table "test_cases", force: true do |t|
    t.string   "title"
    t.text     "precondition"
    t.text     "step"
    t.text     "testdata"
    t.text     "expected_results"
    t.string   "subsystem"
    t.text     "postcondition"
    t.string   "requirement_reference"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_cases", ["title"], name: "index_test_cases_on_title", unique: true, using: :btree

  create_table "test_items", force: true do |t|
    t.string   "track_id"
    t.string   "description"
    t.string   "tester"
    t.string   "status"
    t.string   "priority"
    t.string   "risk"
    t.date     "plan_comp_date"
    t.datetime "actl_start_time"
    t.datetime "actl_comp_time"
    t.string   "test_type"
    t.text     "comment"
    t.string   "specification"
    t.string   "bug_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "version"
  end

  create_table "test_types", force: true do |t|
    t.string   "testtype_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "password_reset_token"
    t.datetime "password_expires_after"
    t.string   "authentication_token"
    t.datetime "signed_up_on"
    t.datetime "last_signed_in_on"
    t.integer  "roles_mask"
  end

  create_table "versions", force: true do |t|
    t.string   "version_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
