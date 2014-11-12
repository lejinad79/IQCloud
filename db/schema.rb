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

ActiveRecord::Schema.define(version: 20141112133926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apiaries", force: true do |t|
    t.string   "name"
    t.integer  "apiary_type_id"
    t.integer  "apiary_forage_type_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.integer  "map_id"
    t.string   "latitude"
    t.string   "longitude"
    t.text     "notes"
  end

  add_index "apiaries", ["apiary_forage_type_id"], name: "index_apiaries_on_apiary_forage_type_id", using: :btree
  add_index "apiaries", ["apiary_type_id"], name: "index_apiaries_on_apiary_type_id", using: :btree
  add_index "apiaries", ["owner_id"], name: "index_apiaries_on_owner_id", using: :btree

  create_table "apiaries_beekeepers", force: true do |t|
    t.integer "apiary_id"
    t.integer "beekeeper_id"
  end

  create_table "apiary_forage_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apiary_id"
    t.integer  "apiary_parameters_setup_id"
  end

  add_index "apiary_forage_types", ["apiary_id"], name: "index_apiary_forage_types_on_apiary_id", using: :btree

  create_table "apiary_parameters_setups", force: true do |t|
    t.integer  "apiary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apiary_parameters_setups", ["apiary_id"], name: "index_apiary_parameters_setups_on_apiary_id", using: :btree

  create_table "apiary_setups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apiary_id"
  end

  add_index "apiary_setups", ["apiary_id"], name: "index_apiary_setups_on_apiary_id", using: :btree

  create_table "apiary_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apiary_parameters_setup_id"
    t.integer  "apiary_id"
  end

  add_index "apiary_types", ["apiary_id"], name: "index_apiary_types_on_apiary_id", using: :btree

  create_table "beehive_group_types", force: true do |t|
    t.string   "name"
    t.integer  "apiary_id"
    t.integer  "apiary_parameters_setup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beehive_group_types", ["apiary_id"], name: "index_beehive_group_types_on_apiary_id", using: :btree

  create_table "beehive_types", force: true do |t|
    t.string   "name"
    t.integer  "apiary_id"
    t.integer  "apiary_parameters_setup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beehive_types", ["apiary_id"], name: "index_beehive_types_on_apiary_id", using: :btree

  create_table "beekeepers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "current_apiary_id"
  end

  add_index "beekeepers", ["email"], name: "index_beekeepers_on_email", unique: true, using: :btree
  add_index "beekeepers", ["reset_password_token"], name: "index_beekeepers_on_reset_password_token", unique: true, using: :btree

  create_table "maps", force: true do |t|
    t.string   "latitude"
    t.string   "longitude"
    t.string   "elevation"
    t.text     "notes"
    t.integer  "mapable_id"
    t.string   "mapable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
