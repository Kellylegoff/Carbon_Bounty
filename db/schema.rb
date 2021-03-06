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

ActiveRecord::Schema.define(version: 2022_04_13_145028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "casesiots", force: :cascade do |t|
    t.bigint "usecase_id", null: false
    t.bigint "iotproduct_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["iotproduct_id"], name: "index_casesiots_on_iotproduct_id"
    t.index ["usecase_id"], name: "index_casesiots_on_usecase_id"
  end

  create_table "composants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "fonction_composant_iotproducts", force: :cascade do |t|
    t.bigint "fonction_id", null: false
    t.bigint "iotproduct_id", null: false
    t.bigint "composant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["composant_id"], name: "index_fonction_composant_iotproducts_on_composant_id"
    t.index ["fonction_id"], name: "index_fonction_composant_iotproducts_on_fonction_id"
    t.index ["iotproduct_id"], name: "index_fonction_composant_iotproducts_on_iotproduct_id"
  end

  create_table "fonctions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "iotproducts", force: :cascade do |t|
    t.string "product_name"
    t.string "product_type"
    t.string "constructor"
    t.integer "eco_score", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "mesures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "objetfonctions", force: :cascade do |t|
    t.bigint "mesure_id", null: false
    t.bigint "objet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "fonctions_id"
    t.index ["fonctions_id"], name: "index_objetfonctions_on_fonctions_id"
    t.index ["mesure_id"], name: "index_objetfonctions_on_mesure_id"
    t.index ["objet_id"], name: "index_objetfonctions_on_objet_id"
  end

  create_table "objets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "odds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spec_usecases", force: :cascade do |t|
    t.bigint "odd_id", null: false
    t.bigint "fonction_id", null: false
    t.bigint "usecase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fonction_id"], name: "index_spec_usecases_on_fonction_id"
    t.index ["odd_id"], name: "index_spec_usecases_on_odd_id"
    t.index ["usecase_id"], name: "index_spec_usecases_on_usecase_id"
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
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "casesiots", "iotproducts"
  add_foreign_key "casesiots", "usecases"
  add_foreign_key "customers", "users"
  add_foreign_key "customerusecases", "customers"
  add_foreign_key "customerusecases", "usecases"
  add_foreign_key "fonction_composant_iotproducts", "composants"
  add_foreign_key "fonction_composant_iotproducts", "fonctions"
  add_foreign_key "fonction_composant_iotproducts", "iotproducts"
  add_foreign_key "objetfonctions", "fonctions", column: "fonctions_id"
  add_foreign_key "objetfonctions", "mesures"
  add_foreign_key "objetfonctions", "objets"
  add_foreign_key "spec_usecases", "fonctions"
  add_foreign_key "spec_usecases", "odds"
  add_foreign_key "spec_usecases", "usecases"
end
