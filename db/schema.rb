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

ActiveRecord::Schema[7.0].define(version: 2024_07_07_025228) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collects", force: :cascade do |t|
    t.bigint "resident_id", null: false
    t.datetime "collected_on"
    t.decimal "ammount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resident_id"], name: "index_collects_on_resident_id"
  end

  create_table "currency_handouts", force: :cascade do |t|
    t.string "title"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.date "handout_date"
    t.decimal "value"
    t.bigint "resident_id", null: false
    t.bigint "currency_handout_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_handout_id"], name: "index_receipts_on_currency_handout_id"
    t.index ["resident_id"], name: "index_receipts_on_resident_id"
  end

  create_table "residents", force: :cascade do |t|
    t.string "name"
    t.integer "situation"
    t.integer "roka_id"
    t.boolean "has_plaque"
    t.string "address"
    t.string "reference_point"
    t.boolean "lives_in_jn"
    t.string "phone"
    t.boolean "is_on_whatsapp_group"
    t.datetime "birthdate"
    t.string "profession"
    t.integer "residents_in_the_house"
    t.string "observations"
    t.boolean "needs_collect_on_the_house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "shift_for_collection_on_the_house"
    t.date "registration_date"
    t.string "description"
    t.date "last_visited"
    t.index ["roka_id"], name: "index_residents_on_roka_id"
  end

  add_foreign_key "collects", "residents"
  add_foreign_key "receipts", "currency_handouts"
  add_foreign_key "receipts", "residents"
end
