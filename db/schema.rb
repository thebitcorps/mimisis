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

ActiveRecord::Schema.define(version: 20150604171128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carousels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "garments", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.text     "description"
    t.decimal  "price"
    t.integer  "sizes",         default: 0
    t.string   "image_url"
    t.boolean  "latest",        default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "collection_id"
  end

  add_index "garments", ["collection_id"], name: "index_garments_on_collection_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.string   "message"
    t.integer  "carousel_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pictures", ["carousel_id"], name: "index_pictures_on_carousel_id", using: :btree

  add_foreign_key "garments", "collections"
  add_foreign_key "pictures", "carousels"
end
