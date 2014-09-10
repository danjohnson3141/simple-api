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

ActiveRecord::Schema.define(version: 20140910035025) do

  create_table "group_members", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_members", ["created_by"], name: "index_group_members_on_created_by", using: :btree
  add_index "group_members", ["group_id"], name: "index_group_members_on_group_id", using: :btree
  add_index "group_members", ["updated_by"], name: "index_group_members_on_updated_by", using: :btree
  add_index "group_members", ["user_id"], name: "index_group_members_on_user_id", using: :btree

  create_table "group_requests", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.boolean  "pre_auth"
    t.boolean  "approved"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_requests", ["created_by"], name: "index_group_requests_on_created_by", using: :btree
  add_index "group_requests", ["group_id"], name: "index_group_requests_on_group_id", using: :btree
  add_index "group_requests", ["updated_by"], name: "index_group_requests_on_updated_by", using: :btree
  add_index "group_requests", ["user_id"], name: "index_group_requests_on_user_id", using: :btree

  create_table "group_types", force: true do |t|
    t.string   "name",             limit: 50
    t.string   "description",      limit: 100
    t.boolean  "visible"
    t.boolean  "leavable"
    t.boolean  "show_member_list"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_types", ["created_by"], name: "index_group_types_on_created_by", using: :btree
  add_index "group_types", ["updated_by"], name: "index_group_types_on_updated_by", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name",          limit: 200
    t.text     "description"
    t.integer  "group_type_id"
    t.integer  "owner_user_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["created_by"], name: "index_groups_on_created_by", using: :btree
  add_index "groups", ["group_type_id"], name: "index_groups_on_group_type_id", using: :btree
  add_index "groups", ["owner_user_id"], name: "index_groups_on_owner_user_id", using: :btree
  add_index "groups", ["updated_by"], name: "index_groups_on_updated_by", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name", limit: 100
    t.string   "last_name",  limit: 100
    t.string   "email",      limit: 100
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["created_by"], name: "index_users_on_created_by", using: :btree
  add_index "users", ["updated_by"], name: "index_users_on_updated_by", using: :btree

  add_foreign_key "group_members", "groups", name: "group_members_group_id_fk"
  add_foreign_key "group_members", "users", name: "group_members_created_by_fk", column: "created_by"
  add_foreign_key "group_members", "users", name: "group_members_updated_by_fk", column: "updated_by"
  add_foreign_key "group_members", "users", name: "group_members_user_id_fk"

  add_foreign_key "group_requests", "groups", name: "group_requests_group_id_fk"
  add_foreign_key "group_requests", "users", name: "group_requests_created_by_fk", column: "created_by"
  add_foreign_key "group_requests", "users", name: "group_requests_updated_by_fk", column: "updated_by"
  add_foreign_key "group_requests", "users", name: "group_requests_user_id_fk"

  add_foreign_key "group_types", "users", name: "group_types_created_by_fk", column: "created_by"
  add_foreign_key "group_types", "users", name: "group_types_updated_by_fk", column: "updated_by"

  add_foreign_key "groups", "group_types", name: "groups_group_type_id_fk"
  add_foreign_key "groups", "users", name: "groups_created_by_fk", column: "created_by"
  add_foreign_key "groups", "users", name: "groups_owner_user_id_fk", column: "owner_user_id"
  add_foreign_key "groups", "users", name: "groups_updated_by_fk", column: "updated_by"

  add_foreign_key "users", "users", name: "users_created_by_fk", column: "created_by"
  add_foreign_key "users", "users", name: "users_updated_by_fk", column: "updated_by"

end
