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

ActiveRecord::Schema.define(version: 20141010014625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
<<<<<<< Updated upstream

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "service_item"
    t.boolean  "is_paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
=======
>>>>>>> Stashed changes

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
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_admin"
    t.string   "cell_number"
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "username"
    t.boolean  "text_notification"
    t.boolean  "email_notification"
    t.boolean  "call_notification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "work_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.text     "notes"
    t.datetime "expected_completion_date"
    t.integer  "status"
    t.boolean  "is_rush"
    t.integer  "serviced_item_id"
    t.string   "description"
    t.boolean  "send_text_notification"
    t.boolean  "send_email_notification"
    t.boolean  "send_call_notification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
