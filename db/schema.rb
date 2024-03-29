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

ActiveRecord::Schema.define(version: 20140301132437) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "businessid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.integer  "line"
    t.string   "businessid"
    t.integer  "typeid"
    t.integer  "account_id"
    t.string   "ncf"
    t.string   "modified_document"
    t.date     "voucher_date"
    t.date     "payment_date"
    t.float    "billed_itbis"
    t.float    "retained_itbis"
    t.float    "amount_billed"
    t.float    "retained_isr"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "fiscal_reports", force: true do |t|
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form606", force: true do |t|
    t.string   "company"
    t.string   "vendor"
    t.string   "fiscal_id"
    t.string   "tipo_bienes_servicios"
    t.string   "ncf"
    t.string   "ncf_modificado"
    t.string   "fecha_de_compra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form606s", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form607s", force: true do |t|
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
