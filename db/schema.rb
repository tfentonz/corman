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

ActiveRecord::Schema.define(version: 0) do

  create_table "corman_correspondence", force: true do |t|
    t.integer "file_id",                      null: false
    t.integer "folio_id"
    t.date    "folio_date"
    t.date    "review_date"
    t.integer "meeting_id"
    t.string  "system",           limit: 3
    t.string  "reference",        limit: 20
    t.integer "officer_id"
    t.integer "correspondent_id"
    t.integer "type_id"
    t.string  "summary",          limit: 50
    t.string  "details",          limit: 300
    t.integer "linkto"
    t.integer "linkfrom"
    t.integer "note_count"
  end

  create_table "corman_correspondent", force: true do |t|
    t.string  "name",        limit: 60
    t.string  "street",      limit: 60
    t.string  "town",        limit: 40
    t.string  "state",       limit: 3
    t.integer "postecode"
    t.string  "description", limit: 60
  end

  create_table "corman_files", force: true do |t|
    t.string  "number",      limit: 25
    t.string  "description", limit: 60
    t.integer "level"
    t.string  "selectable",  limit: 1
    t.integer "parent_id"
  end

  create_table "corman_keyword_index", force: true do |t|
    t.integer "correspondence_id", null: false
    t.integer "keyword_id",        null: false
  end

  create_table "corman_keywords", force: true do |t|
    t.string "keyword", limit: 25
  end

  create_table "corman_meetings", force: true do |t|
    t.date   "date"
    t.string "description", limit: 45
  end

  create_table "corman_officer", force: true do |t|
    t.string  "name",    limit: 40
    t.string  "email",   limit: 40
    t.integer "mygroup"
    t.string  "isgroup", limit: 1
  end

  create_table "corman_schema_migrations", id: false, force: true do |t|
    t.string "version", null: false
  end

  add_index "corman_schema_migrations", ["version"], name: "corman_unique_schema_migrations", unique: true, using: :btree

  create_table "corman_type", force: true do |t|
    t.string "description", limit: 60
  end

end