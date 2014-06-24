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

ActiveRecord::Schema.define(version: 20140624011654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.integer  "transfer"
    t.integer  "check"
    t.integer  "deposit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_process_id"
  end

  add_index "accounts", ["sale_process_id"], name: "index_accounts_on_sale_process_id", using: :btree

  create_table "billings", force: true do |t|
    t.integer  "bill"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_process_id"
  end

  add_index "billings", ["sale_process_id"], name: "index_billings_on_sale_process_id", using: :btree

  create_table "dispatches", force: true do |t|
    t.integer  "electronic_dispatch"
    t.integer  "dispatch_ticket"
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
  end

  create_table "sales", force: true do |t|
    t.integer  "price"
    t.integer  "sale_note"
    t.integer  "purchase_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_process_id"
  end

  add_index "sales", ["sale_process_id"], name: "index_sales_on_sale_process_id", using: :btree

end
