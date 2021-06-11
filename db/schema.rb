# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161011152229) do

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_phone"
    t.string   "customer_email"
    t.string   "customer_location"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "driver_name"
    t.string   "driver_email"
    t.string   "driver_phone"
    t.string   "driver_address"
    t.string   "driver_location"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "item"
    t.string   "price"
    t.string   "quantity"
    t.string   "total_price"
    t.integer  "request_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lists", ["request_id"], name: "index_lists_on_request_id"

  create_table "payments", force: :cascade do |t|
    t.string   "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "driver_id"
    t.string   "location_name"
    t.string   "map_location"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "payment_id"
    t.string   "price"
  end

  add_index "requests", ["customer_id"], name: "index_requests_on_customer_id"
  add_index "requests", ["driver_id"], name: "index_requests_on_driver_id"
  add_index "requests", ["payment_id"], name: "index_requests_on_payment_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "user_email"
    t.string   "user_phone"
    t.string   "user_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
