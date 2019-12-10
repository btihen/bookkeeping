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

ActiveRecord::Schema.define(version: 2019_12_10_144245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "category_effect"
    t.string "category_effect_enum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books_sheets", force: :cascade do |t|
    t.string "sheet_name"
    t.bigint "plus_effect_id", null: false
    t.bigint "minus_effect_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["minus_effect_id"], name: "index_books_sheets_on_minus_effect_id"
    t.index ["plus_effect_id"], name: "index_books_sheets_on_plus_effect_id"
  end

  add_foreign_key "books_sheets", "books_categories", column: "minus_effect_id"
  add_foreign_key "books_sheets", "books_categories", column: "plus_effect_id"
end
