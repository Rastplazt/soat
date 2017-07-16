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

ActiveRecord::Schema.define(version: 20170715223717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payments", force: :cascade do |t|
    t.string   "numcard"
    t.string   "name_owner"
    t.date     "expiry_date"
    t.integer  "code"
    t.integer  "dues_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "type_document"
    t.integer  "document"
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_people_on_user_id", using: :btree
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "total_amount"
    t.date     "valid_since"
    t.date     "valid_until"
    t.integer  "vehicle_id"
    t.integer  "payment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["payment_id"], name: "index_purchases_on_payment_id", using: :btree
    t.index ["vehicle_id"], name: "index_purchases_on_vehicle_id", using: :btree
  end

  create_table "seed_migration_data_migrations", force: :cascade do |t|
    t.string   "version"
    t.integer  "runtime"
    t.datetime "migrated_on"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "subtype"
    t.integer  "year"
    t.float    "tax"
    t.integer  "prime"
    t.integer  "fosyga"
    t.integer  "runt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "plate"
    t.integer  "vehicle_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id", using: :btree
  end

  add_foreign_key "people", "users"
  add_foreign_key "purchases", "payments"
  add_foreign_key "purchases", "vehicles"
  add_foreign_key "vehicles", "vehicle_types"
end
