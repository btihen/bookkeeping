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

ActiveRecord::Schema.define(version: 2019_12_15_162749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chart_account_groups", force: :cascade do |t|
    t.string "lang_key", null: false
    t.string "a_group_num", null: false
    t.string "s_group_description"
    t.bigint "account_klass_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_klass_id"], name: "index_chart_account_groups_on_account_klass_id"
    t.index ["lang_key"], name: "index_chart_account_groups_on_lang_key", unique: true
  end

  create_table "chart_account_klasses", force: :cascade do |t|
    t.string "lang_key", null: false
    t.string "a_klass_num", null: false
    t.string "s_klass_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["a_klass_num"], name: "index_chart_account_klasses_on_a_klass_num", unique: true
    t.index ["lang_key"], name: "index_chart_account_klasses_on_lang_key", unique: true
  end

  create_table "chart_account_sub_groups", force: :cascade do |t|
    t.string "lang_key", null: false
    t.string "a_sub_num", null: false
    t.string "s_sub_description"
    t.bigint "account_group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["a_sub_num"], name: "index_chart_account_sub_groups_on_a_sub_num", unique: true
    t.index ["account_group_id"], name: "index_chart_account_sub_groups_on_account_group_id"
    t.index ["lang_key"], name: "index_chart_account_sub_groups_on_lang_key", unique: true
  end

  create_table "chart_accounts", force: :cascade do |t|
    t.string "lang_key", null: false
    t.string "debit_effect", null: false
    t.string "credit_effect", null: false
    t.string "a_account_num", null: false
    t.string "a_account_description"
    t.bigint "sub_statement_id", null: false
    t.bigint "account_sub_group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["a_account_num"], name: "index_chart_accounts_on_a_account_num", unique: true
    t.index ["account_sub_group_id"], name: "index_chart_accounts_on_account_sub_group_id"
    t.index ["lang_key"], name: "index_chart_accounts_on_lang_key", unique: true
    t.index ["sub_statement_id"], name: "index_chart_accounts_on_sub_statement_id"
  end

  create_table "sheets_statement_klasses", force: :cascade do |t|
    t.string "lang_key", null: false
    t.string "s_klass_num", null: false
    t.string "s_klass_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lang_key"], name: "index_sheets_statement_klasses_on_lang_key", unique: true
    t.index ["s_klass_num"], name: "index_sheets_statement_klasses_on_s_klass_num", unique: true
  end

  create_table "sheets_statements", force: :cascade do |t|
    t.string "lang_key", null: false
    t.string "s_state_num", null: false
    t.string "s_state_description"
    t.bigint "increase_klass_id", null: false
    t.bigint "decrease_klass_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["decrease_klass_id"], name: "index_sheets_statements_on_decrease_klass_id"
    t.index ["increase_klass_id"], name: "index_sheets_statements_on_increase_klass_id"
    t.index ["lang_key"], name: "index_sheets_statements_on_lang_key", unique: true
    t.index ["s_state_num"], name: "index_sheets_statements_on_s_state_num", unique: true
  end

  create_table "sheets_sub_statements", force: :cascade do |t|
    t.string "lang_key", null: false
    t.string "s_sub_num", null: false
    t.string "s_sub_description"
    t.bigint "sheet_statement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lang_key"], name: "index_sheets_sub_statements_on_lang_key", unique: true
    t.index ["sheet_statement_id"], name: "index_sheets_sub_statements_on_sheet_statement_id"
  end

  add_foreign_key "chart_account_groups", "chart_account_klasses", column: "account_klass_id"
  add_foreign_key "chart_account_sub_groups", "chart_account_groups", column: "account_group_id"
  add_foreign_key "chart_accounts", "chart_account_sub_groups", column: "account_sub_group_id"
  add_foreign_key "chart_accounts", "sheets_sub_statements", column: "sub_statement_id"
  add_foreign_key "sheets_statements", "sheets_statement_klasses", column: "decrease_klass_id"
  add_foreign_key "sheets_statements", "sheets_statement_klasses", column: "increase_klass_id"
  add_foreign_key "sheets_sub_statements", "sheets_statements", column: "sheet_statement_id"
end
