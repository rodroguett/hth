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

ActiveRecord::Schema.define(version: 20140821040545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.text     "transfer"
    t.text     "check"
    t.text     "deposit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_process_id"
  end

  add_index "accounts", ["sale_process_id"], name: "index_accounts_on_sale_process_id", using: :btree

  create_table "billings", force: true do |t|
    t.text     "bill"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_process_id"
  end

  add_index "billings", ["sale_process_id"], name: "index_billings_on_sale_process_id", using: :btree

  create_table "clients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dispatches", force: true do |t|
    t.integer  "electronic_dispatch"
    t.text     "dispatch_ticket"
    t.datetime "dispatch_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_process_id"
  end

  add_index "dispatches", ["sale_process_id"], name: "index_dispatches_on_sale_process_id", using: :btree

  create_table "sale_processes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "sales", force: true do |t|
    t.text     "price"
    t.text     "sale_note"
    t.text     "purchase_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_process_id"
  end

  add_index "sales", ["sale_process_id"], name: "index_sales_on_sale_process_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
