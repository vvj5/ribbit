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

ActiveRecord::Schema.define(version: 20150613002553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.integer  "user_id"
    t.integer  "link_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["link_id"], name: "index_comments_on_link_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "user_id"
    t.integer  "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "links", ["board_id"], name: "index_links_on_board_id", using: :btree
  add_index "links", ["user_id"], name: "index_links_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "number"
    t.integer  "upvote"
    t.integer  "downvote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "links"
  add_foreign_key "comments", "users"
  add_foreign_key "links", "boards"
  add_foreign_key "links", "users"
end
