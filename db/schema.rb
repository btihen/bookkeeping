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

ActiveRecord::Schema.define(version: 2019_12_15_104558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books_categories", force: :cascade do |t|
    t.string "category_key", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_key"], name: "index_books_categories_on_category_key", unique: true
  end

  create_table "books_sheets", force: :cascade do |t|
    t.string "sheet_key"
    t.bigint "plus_effect_id", null: false
    t.bigint "minus_effect_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["minus_effect_id"], name: "index_books_sheets_on_minus_effect_id"
    t.index ["plus_effect_id"], name: "index_books_sheets_on_plus_effect_id"
    t.index ["sheet_key"], name: "index_books_sheets_on_sheet_key", unique: true
  end

  create_table "books_sub_categories", force: :cascade do |t|
    t.string "sub_category_key"
    t.bigint "books_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["books_category_id"], name: "index_books_sub_categories_on_books_category_id"
  end

  create_table "sheets_statement_klasses", force: :cascade do |t|
    t.string "lang_key"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sheets_statements", force: :cascade do |t|
    t.string "lang_key"
    t.bigint "increase_klass_id", null: false
    t.bigint "decrease_klass_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["decrease_klass_id"], name: "index_sheets_statements_on_decrease_klass_id"
    t.index ["increase_klass_id"], name: "index_sheets_statements_on_increase_klass_id"
    t.index ["lang_key"], name: "index_sheets_statements_on_lang_key", unique: true
  end

  create_table "sheets_sub_statements", force: :cascade do |t|
    t.string "lang_key"
    t.bigint "sheet_statement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lang_key"], name: "index_sheets_sub_statements_on_lang_key", unique: true
    t.index ["sheet_statement_id"], name: "index_sheets_sub_statements_on_sheet_statement_id"
  end

  add_foreign_key "books_sheets", "books_categories", column: "minus_effect_id"
  add_foreign_key "books_sheets", "books_categories", column: "plus_effect_id"
  add_foreign_key "books_sub_categories", "books_categories"
  add_foreign_key "sheets_statements", "sheets_statement_klasses", column: "decrease_klass_id"
  add_foreign_key "sheets_statements", "sheets_statement_klasses", column: "increase_klass_id"
  add_foreign_key "sheets_sub_statements", "sheets_statements", column: "sheet_statement_id"
end
