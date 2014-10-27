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

ActiveRecord::Schema.define(version: 20141027122506) do

  create_table "clients", force: true do |t|
    t.string   "uid"
    t.string   "contract"
    t.string   "companyname"
    t.string   "address"
    t.text     "comments"
    t.text     "contacts"
    t.text     "phones"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ips", force: true do |t|
    t.integer  "client_id"
    t.string   "uid"
    t.string   "p2p"
    t.string   "net"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ips", ["client_id"], name: "index_ips_on_client_id"

  create_table "voips", force: true do |t|
    t.integer  "client_id"
    t.string   "gatewayip"
    t.integer  "prefix"
    t.integer  "number"
    t.integer  "line"
    t.string   "restrictions"
    t.string   "gateway"
    t.string   "protocol"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uid"
  end

  add_index "voips", ["client_id"], name: "index_voips_on_client_id"

end
