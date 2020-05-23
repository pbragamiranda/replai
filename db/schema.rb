# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_23_144051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_government_agencies", force: :cascade do |t|
    t.string "city_name"
    t.string "website"
    t.string "email_executive"
    t.string "twitter_executive"
    t.string "email_legislative"
    t.string "twitter_legislative"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "public_datum_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["public_datum_id"], name: "index_comments_on_public_datum_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "lai_requests", force: :cascade do |t|
    t.text "description"
    t.string "category"
    t.string "status"
    t.string "format"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "city_government_agency_id"
    t.datetime "deadline"
    t.index ["city_government_agency_id"], name: "index_lai_requests_on_city_government_agency_id"
    t.index ["user_id"], name: "index_lai_requests_on_user_id"
  end

  create_table "public_data", force: :cascade do |t|
    t.string "category"
    t.string "power"
    t.text "description"
    t.string "branch"
    t.string "city"
    t.string "state"
    t.string "name"
    t.string "format"
    t.string "level"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_public_data_on_user_id"
  end

  create_table "request_answers", force: :cascade do |t|
    t.text "content"
    t.bigint "lai_request_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lai_request_id"], name: "index_request_answers_on_lai_request_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "public_data"
  add_foreign_key "comments", "users"
  add_foreign_key "lai_requests", "city_government_agencies"
  add_foreign_key "lai_requests", "users"
  add_foreign_key "public_data", "users"
  add_foreign_key "request_answers", "lai_requests"
end
