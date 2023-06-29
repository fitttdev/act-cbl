# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_29_174042) do
  create_table "chats", force: :cascade do |t|
    t.text "body"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "firsts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.text "body"
    t.integer "chat_id", null: false
    t.integer "reply_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_replies_on_chat_id"
    t.index ["reply_id"], name: "index_replies_on_reply_id"
  end

  create_table "user_chats", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "chat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_user_chats_on_chat_id"
    t.index ["user_id"], name: "index_user_chats_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chats", "users"
  add_foreign_key "replies", "chats"
  add_foreign_key "replies", "replies"
  add_foreign_key "user_chats", "chats"
  add_foreign_key "user_chats", "users"
end
