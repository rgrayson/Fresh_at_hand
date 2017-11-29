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

ActiveRecord::Schema.define(version: 20171129163200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accntlists", force: :cascade do |t|
    t.string   "div"
    t.string   "acnt_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "produced_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "appconfigs", force: :cascade do |t|
    t.string   "last_update"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "pk"
  end

  create_table "avidivs", force: :cascade do |t|
    t.string   "div_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.decimal  "sel_prc"
  end

  create_table "work_print_labels", force: :cascade do |t|
    t.string   "label_name"
    t.string   "label_name2"
    t.string   "scan_code"
    t.string   "scan_code2"
    t.string   "sel_prc"
    t.decimal  "sel_prc2"
    t.string   "half_port"
    t.string   "half_port2"
    t.string   "special_notes2"
    t.string   "alg_egg"
    t.string   "alg_egg2"
    t.string   "alg_shellfish"
    t.string   "alg_shellfish2"
    t.string   "alg_fish"
    t.string   "alg_fish2"
    t.string   "alg_soy"
    t.string   "alg_soy2"
    t.string   "alg_milk"
    t.string   "alg_milk2"
    t.string   "alg_treenuts"
    t.string   "alg_treenuts2"
    t.string   "alg_peanuts"
    t.string   "alg_peanuts2"
    t.string   "alg_wheat"
    t.string   "alg_wheat2"
    t.string   "ingredient_list"
    t.string   "ingredient_list2"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rid"
    t.integer  "copies"
    t.string   "div2"
    t.string   "produced_by2"
    t.string   "acnt_name2"
    t.string   "address_full2"
  end

end
