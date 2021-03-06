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

ActiveRecord::Schema[7.0].define(version: 2022_04_16_165534) do
  create_table "cashaccounts", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id", null: false
    t.index ["company_id"], name: "index_cashaccounts_on_company_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
    t.index ["company_id"], name: "index_categories_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id", null: false
    t.index ["company_id"], name: "index_customers_on_company_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "unit_price"
    t.float "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id", null: false
    t.integer "unit_id", null: false
    t.integer "warehouse_id", null: false
    t.integer "company_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["company_id"], name: "index_products_on_company_id"
    t.index ["unit_id"], name: "index_products_on_unit_id"
    t.index ["warehouse_id"], name: "index_products_on_warehouse_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "conversion_formula"
    t.boolean "is_based"
    t.string "based_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id", null: false
    t.index ["company_id"], name: "index_units_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id", null: false
    t.index ["company_id"], name: "index_warehouses_on_company_id"
  end

  add_foreign_key "cashaccounts", "companies"
  add_foreign_key "categories", "companies"
  add_foreign_key "customers", "companies"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "companies"
  add_foreign_key "products", "units"
  add_foreign_key "products", "warehouses"
  add_foreign_key "units", "companies"
  add_foreign_key "users", "companies"
  add_foreign_key "warehouses", "companies"
end
