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

ActiveRecord::Schema.define(version: 2022_04_06_130037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casesiots", force: :cascade do |t|
    t.bigint "usecase_id", null: false
    t.bigint "iotproduct_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["iotproduct_id"], name: "index_casesiots_on_iotproduct_id"
    t.index ["usecase_id"], name: "index_casesiots_on_usecase_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "company_name"
    t.string "address"
    t.string "phone"
    t.string "contact_first_name"
    t.string "contact_last_name"
    t.string "role"
    t.string "company_type"
    t.string "sector"
    t.string "siret"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "customerusecases", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "usecase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customerusecases_on_customer_id"
    t.index ["usecase_id"], name: "index_customerusecases_on_usecase_id"
  end

  create_table "iotproducts", force: :cascade do |t|
    t.string "product_name"
    t.string "product_type"
    t.string "constructor"
    t.integer "eco_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "usecases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "casesiots", "iotproducts"
  add_foreign_key "casesiots", "usecases"
  add_foreign_key "customers", "users"
  add_foreign_key "customerusecases", "customers"
  add_foreign_key "customerusecases", "usecases"
end
