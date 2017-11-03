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

ActiveRecord::Schema.define(version: 20171103182347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_configs", force: :cascade do |t|
    t.datetime "last_update"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "appconfigs", force: :cascade do |t|
    t.string   "last_update"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "pk"
  end

  create_table "recipeingredients", force: :cascade do |t|
    t.integer  "rid"
    t.integer  "rid_li"
    t.string   "supc"
    t.string   "desc"
    t.string   "prep_notes"
    t.string   "amount"
    t.string   "uofm"
    t.string   "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipeprocedures", force: :cascade do |t|
    t.integer  "rid"
    t.integer  "rid_proc"
    t.string   "rid_proc_desc"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "rid"
    t.string   "rid_typ"
    t.string   "rid_desc"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "ser_size"
    t.string   "calories"
    t.string   "tfat"
    t.string   "cfrmfat"
    t.string   "satfat"
    t.string   "sel_prc"
    t.string   "yld"
    t.string   "batch_yld"
    t.string   "shelf_life"
    t.string   "alg_egg"
    t.string   "alg_shellfish"
    t.string   "alg_fish"
    t.string   "alg_soy"
    t.string   "alg_milk"
    t.string   "alg_treenuts"
    t.string   "alg_peanuts"
    t.string   "alg_wheat"
    t.string   "catid"
    t.text     "ingredient_list"
    t.text     "scan_code"
  end

end
