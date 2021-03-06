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

ActiveRecord::Schema.define(version: 20150519235008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "category_id"
    t.string   "note"
    t.date     "date"
    t.decimal  "hst"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.decimal  "total"
  end

  add_index "expenses", ["category_id"], name: "index_expenses_on_category_id", using: :btree

  create_table "incomes", force: :cascade do |t|
    t.decimal  "cashSales"
    t.decimal  "salesReturns"
    t.decimal  "totalSales"
    t.decimal  "paymentOnAccount"
    t.integer  "client_id"
    t.string   "income_type"
    t.date     "date"
    t.decimal  "hst"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "incomes", ["client_id"], name: "index_incomes_on_client_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_foreign_key "expenses", "categories"
  add_foreign_key "incomes", "clients"
end
