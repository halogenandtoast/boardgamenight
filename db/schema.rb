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

ActiveRecord::Schema.define(version: 20140515192802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "group_memberships", force: true do |t|
    t.integer "group_id"
    t.integer "member_id"
  end

  add_index "group_memberships", ["group_id"], name: "index_group_memberships_on_group_id", using: :btree
  add_index "group_memberships", ["member_id"], name: "index_group_memberships_on_member_id", using: :btree

  create_table "groups", force: true do |t|
    t.string "title"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "recurrence_rules"
    t.date     "starts_on"
  end

  add_index "locations", ["group_id"], name: "index_locations_on_group_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

end
