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

ActiveRecord::Schema.define(version: 2020_04_16_061800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorizings", force: :cascade do |t|
    t.bigint "volunteer_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categorizings_on_category_id"
    t.index ["volunteer_id"], name: "index_categorizings_on_volunteer_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "volunteer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
    t.index ["volunteer_id"], name: "index_comments_on_volunteer_id"
  end

  create_table "good_evaluations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "evaluate_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_user_id"], name: "index_good_evaluations_on_evaluate_user_id"
    t.index ["user_id", "evaluate_user_id"], name: "index_good_evaluations_on_user_id_and_evaluate_user_id", unique: true
    t.index ["user_id"], name: "index_good_evaluations_on_user_id"
  end

  create_table "order_managements", force: :cascade do |t|
    t.integer "user_id"
    t.integer "volunteer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.string "icon", default: ""
    t.boolean "admin", default: false, null: false
    t.text "introduction", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.text "describe", default: "", null: false
    t.string "image"
    t.text "address", default: "", null: false
    t.datetime "date", default: "2020-05-22 14:25:14", null: false
    t.integer "capacity", default: 4, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_volunteers_on_user_id"
  end

  add_foreign_key "categorizings", "categories"
  add_foreign_key "categorizings", "volunteers"
  add_foreign_key "comments", "users"
  add_foreign_key "comments", "volunteers"
  add_foreign_key "good_evaluations", "users"
  add_foreign_key "good_evaluations", "users", column: "evaluate_user_id"
  add_foreign_key "volunteers", "users"
end
