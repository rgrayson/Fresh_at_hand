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

ActiveRecord::Schema.define(version: 20161020185720) do

  create_table "cscorderlis", force: :cascade do |t|
    t.integer  "cscorders_id"
    t.string   "category"
    t.string   "itemnmbr"
    t.string   "itemdesc"
    t.integer  "mrktc_only"
    t.decimal  "selprc"
    t.string   "uofm"
    t.integer  "qtyord"
    t.string   "h_ord"
    t.string   "h_avgord"
    t.string   "h_avgwst"
    t.string   "h_sugord"
    t.string   "h_range"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cscorders", force: :cascade do |t|
    t.integer  "storeid"
    t.string   "ordsts"
    t.datetime "submitted_dte"
    t.string   "submitted_by"
    t.string   "mcode"
    t.date     "dte"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "prod_id"
    t.string   "dow"
    t.string   "ordsts_txt"
  end

  create_table "maintadmins", force: :cascade do |t|
    t.string   "user"
    t.string   "pw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mrktcstores", force: :cascade do |t|
    t.integer  "storeid"
    t.string   "storename"
    t.string   "locncode"
    t.string   "fld"
    t.string   "flddesc"
    t.integer  "sub"
    t.string   "subdesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storeperms", force: :cascade do |t|
    t.integer  "storeid"
    t.string   "user"
    t.string   "pw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "storename"
  end

end
