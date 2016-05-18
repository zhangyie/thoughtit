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

ActiveRecord::Schema.define(version: 20160518081448) do

  create_table "contracts", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "ctitle"
    t.date     "cbegin"
    t.date     "cend"
    t.float    "cproduct"
    t.float    "cservice"
    t.float    "cimplement"
    t.float    "cprogram"
    t.float    "cthird"
    t.string   "ckingdee"
    t.text     "cmemo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contracts", ["project_id"], name: "index_contracts_on_project_id"

  create_table "incomeplans", force: :cascade do |t|
    t.integer  "contract_id"
    t.string   "ititle"
    t.float    "iprice"
    t.date     "idate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "incomeplans", ["contract_id"], name: "index_incomeplans_on_contract_id"

  create_table "projects", force: :cascade do |t|
    t.string   "ptitle"
    t.string   "pcustom"
    t.string   "ptype"
    t.string   "pprice"
    t.date     "pdate"
    t.string   "psales"
    t.string   "psource"
    t.string   "pstate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
