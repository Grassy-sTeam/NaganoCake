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


ActiveRecord::Schema.define(version: 20210119072757) do
  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "kana_first_name"
    t.string   "kana_last_name"
    t.string   "postal_code"
    t.string   "address"
    t.string   "telephone_number"
    t.boolean  "is_deleted",             default: false, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_valid",   default: true, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name"], name: "index_genres_on_name", unique: true
  end

  create_table "items", force: :cascade do |t|
    t.integer  "genre_id"
    t.string   "name"
    t.text     "detail"
    t.string   "image_id"
    t.integer  "price"
    t.boolean  "is_sold",    default: true, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name"], name: "index_items_on_name", unique: true
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "order_id"
    t.integer  "count"
    t.integer  "making_status",   default: 0
    t.integer  "purchased_price"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "payment_method", default: 0
    t.integer  "status",         default: 0
    t.string   "address"
    t.string   "postal_code"
    t.string   "name"
    t.integer  "shipping_cost",  default: 800
    t.integer  "total_price"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
