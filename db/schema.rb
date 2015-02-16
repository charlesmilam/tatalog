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

ActiveRecord::Schema.define(version: 20150216043954) do

  create_table "artists", force: :cascade do |t|
    t.string   "nick"
    t.string   "email"
    t.integer  "shop_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tattoo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["tattoo_id"], name: "index_favorites_on_tattoo_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tattoo_pics", force: :cascade do |t|
    t.integer  "tattoo_id"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tattoos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "artist_id"
    t.date     "when"
    t.integer  "shop_id"
    t.text     "why"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
