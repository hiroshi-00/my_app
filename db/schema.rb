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

ActiveRecord::Schema.define(version: 2020_10_29_093223) do

  create_table "categories", force: :cascade do |t|
    t.string "name_string"
    t.integer "weapon_id"
    t.integer "dress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dress_id"], name: "index_categories_on_dress_id"
    t.index ["weapon_id"], name: "index_categories_on_weapon_id"
  end

  create_table "dresses", force: :cascade do |t|
    t.integer "no"
    t.string "name"
    t.string "img"
    t.string "category"
    t.string "rarity"
    t.integer "max_lvl"
    t.string "element"
    t.integer "max_hp"
    t.string "skl_1"
    t.string "skl_1_element"
    t.text "skl_1_detail"
    t.string "skl_2"
    t.string "skl_2_element"
    t.text "skl_2_detail"
    t.string "kakusei"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.integer "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weapon_id"], name: "index_types_on_weapon_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.integer "no"
    t.string "name"
    t.string "img"
    t.string "weapon_type"
    t.string "category"
    t.string "rarity"
    t.integer "max_lvl"
    t.string "element"
    t.integer "max_atck"
    t.integer "max_bullet"
    t.string "skl_1"
    t.string "skl_1_element"
    t.text "skl_1_detail"
    t.string "skl_2"
    t.string "skl_2_element"
    t.text "skl_2_detail"
    t.string "kakusei"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
