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

ActiveRecord::Schema.define(version: 20130809142334) do

  create_table "banks", force: true do |t|
    t.string   "identifier", null: false
    t.string   "name",       null: false
    t.text     "address",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "banks", ["identifier"], name: "index_banks_on_identifier", unique: true, using: :btree

  create_table "clients", force: true do |t|
    t.string   "identifier",   null: false
    t.string   "name",         null: false
    t.string   "contact"
    t.text     "address",      null: false
    t.string   "phone",        null: false
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country_code", null: false
  end

  add_index "clients", ["identifier"], name: "index_clients_on_identifier", unique: true, using: :btree

  create_table "payment_rules", force: true do |t|
    t.string   "name",                                null: false
    t.decimal  "percent",    precision: 10, scale: 0, null: false
    t.integer  "period",                              null: false
    t.integer  "since",                               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payment_rules", ["percent", "period", "since"], name: "index_payment_rules_on_percent_and_period_and_since", unique: true, using: :btree

  create_table "suppliers", force: true do |t|
    t.string   "identifier",       null: false
    t.string   "name",             null: false
    t.text     "address",          null: false
    t.text     "shipping_address", null: false
    t.string   "contact_name"
    t.string   "contact_mail"
    t.string   "phone",            null: false
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country_code",     null: false
  end

  add_index "suppliers", ["identifier"], name: "index_suppliers_on_identifier", unique: true, using: :btree

end
