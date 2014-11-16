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

ActiveRecord::Schema.define(version: 20141114073141) do

  create_table "apiaries", force: true do |t|
    t.string   "name"
    t.integer  "apiary_type_id"
    t.integer  "apiary_forage_type_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
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
    t.integer  "owner_id"
  end

  add_index "apiary_parameters_setups", ["apiary_id"], name: "index_apiary_parameters_setups_on_apiary_id", using: :btree
  add_index "apiary_parameters_setups", ["owner_id"], name: "index_apiary_parameters_setups_on_owner_id", using: :btree

  create_table "apiary_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "apiary_id"
    t.integer  "apiary_parameters_setup_id"
  end

  add_index "apiary_types", ["apiary_id"], name: "index_apiary_types_on_apiary_id", using: :btree

  create_table "apiary_works", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "notes"
    t.integer  "apiary_id"
    t.integer  "hives_id"
    t.integer  "work_information_type_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apiary_works", ["apiary_id"], name: "index_apiary_works_on_apiary_id", using: :btree
  add_index "apiary_works", ["hives_id"], name: "index_apiary_works_on_hives_id", using: :btree
  add_index "apiary_works", ["work_information_type_id"], name: "index_apiary_works_on_work_information_type_id", using: :btree

  create_table "bad_places", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "elevation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beehive_group_types", force: true do |t|
    t.string   "name"
    t.integer  "apiary_id"
    t.integer  "apiary_parameters_setup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beehive_group_types", ["apiary_id"], name: "index_beehive_group_types_on_apiary_id", using: :btree

  create_table "beehive_groups", force: true do |t|
    t.string   "name"
    t.integer  "apiary_id"
    t.integer  "beehive_group_type_id"
    t.integer  "group_type_id"
    t.text     "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "elevation"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beehive_groups", ["apiary_id"], name: "index_beehive_groups_on_apiary_id", using: :btree
  add_index "beehive_groups", ["beehive_group_type_id"], name: "index_beehive_groups_on_beehive_group_type_id", using: :btree
  add_index "beehive_groups", ["group_type_id"], name: "index_beehive_groups_on_group_type_id", using: :btree

  create_table "beehive_types", force: true do |t|
    t.string   "name"
    t.integer  "apiary_id"
    t.integer  "apiary_parameters_setup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beehive_types", ["apiary_id"], name: "index_beehive_types_on_apiary_id", using: :btree

  create_table "beehives", force: true do |t|
    t.string   "name"
    t.integer  "beehive_type_id"
    t.integer  "apiary_id"
    t.integer  "group_id"
    t.integer  "colony_source_id"
    t.integer  "colony_strength"
    t.integer  "colony_quality"
    t.integer  "supers_id"
    t.text     "notes"
    t.string   "queen_name"
    t.string   "seller_first_name"
    t.string   "seller_last_name"
    t.string   "place"
    t.string   "address"
    t.string   "email_address"
    t.string   "phone"
    t.integer  "from_apiary_id"
    t.integer  "from_beehive_id"
    t.string   "race"
    t.date     "installed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beehives", ["apiary_id"], name: "index_beehives_on_apiary_id", using: :btree
  add_index "beehives", ["beehive_type_id"], name: "index_beehives_on_beehive_type_id", using: :btree
  add_index "beehives", ["colony_source_id"], name: "index_beehives_on_colony_source_id", using: :btree
  add_index "beehives", ["from_apiary_id"], name: "index_beehives_on_from_apiary_id", using: :btree
  add_index "beehives", ["from_beehive_id"], name: "index_beehives_on_from_beehive_id", using: :btree
  add_index "beehives", ["group_id"], name: "index_beehives_on_group_id", using: :btree
  add_index "beehives", ["supers_id"], name: "index_beehives_on_supers_id", using: :btree

  create_table "beekeepers", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "current_apiary_id"
  end

  add_index "beekeepers", ["email"], name: "index_beekeepers_on_email", unique: true, using: :btree
  add_index "beekeepers", ["reset_password_token"], name: "index_beekeepers_on_reset_password_token", unique: true, using: :btree

  create_table "economies", force: true do |t|
    t.integer  "beehive_id"
    t.string   "name"
    t.integer  "category_id"
    t.integer  "type_id"
    t.text     "description"
    t.string   "value"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "economies", ["beehive_id"], name: "index_economies_on_beehive_id", using: :btree
  add_index "economies", ["category_id"], name: "index_economies_on_category_id", using: :btree
  add_index "economies", ["type_id"], name: "index_economies_on_type_id", using: :btree

  create_table "feedings", force: true do |t|
    t.integer  "beehive_id"
    t.string   "name"
    t.integer  "food_type_id"
    t.integer  "quantity"
    t.integer  "quantity_unit_id"
    t.integer  "supplements_id"
    t.date     "date"
    t.text     "notes"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedings", ["beehive_id"], name: "index_feedings_on_beehive_id", using: :btree
  add_index "feedings", ["food_type_id"], name: "index_feedings_on_food_type_id", using: :btree
  add_index "feedings", ["quantity_unit_id"], name: "index_feedings_on_quantity_unit_id", using: :btree
  add_index "feedings", ["supplements_id"], name: "index_feedings_on_supplements_id", using: :btree

  create_table "harvests", force: true do |t|
    t.integer  "beehive_id"
    t.string   "name"
    t.integer  "type_id"
    t.integer  "quantity"
    t.integer  "quantity_unit_id"
    t.string   "value"
    t.date     "date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "harvests", ["beehive_id"], name: "index_harvests_on_beehive_id", using: :btree
  add_index "harvests", ["quantity_unit_id"], name: "index_harvests_on_quantity_unit_id", using: :btree
  add_index "harvests", ["type_id"], name: "index_harvests_on_type_id", using: :btree

  create_table "inspections", force: true do |t|
    t.integer  "beehive_id"
    t.string   "name"
    t.integer  "society_strength"
    t.integer  "the_nature_of_the_bees"
    t.boolean  "swarm_drive"
    t.boolean  "a_qulet_shift"
    t.boolean  "the_forced"
    t.integer  "disease_id"
    t.integer  "number_of_frames_with_brood"
    t.integer  "number_of_frames_with_honey"
    t.integer  "number_of_frames_with_pollen"
    t.integer  "quality_nut"
    t.integer  "number_of_opened_broods"
    t.integer  "number_of_closed_broods"
    t.text     "alert_info"
    t.text     "note_info"
    t.date     "inspection_date"
    t.integer  "hive_condition"
    t.boolean  "firs_spring_inspection"
    t.boolean  "inspection_before_winter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inspections", ["beehive_id"], name: "index_inspections_on_beehive_id", using: :btree
  add_index "inspections", ["disease_id"], name: "index_inspections_on_disease_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "elevation"
    t.integer  "country_id"
    t.integer  "forages_id"
    t.boolean  "private_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["country_id"], name: "index_locations_on_country_id", using: :btree
  add_index "locations", ["forages_id"], name: "index_locations_on_forages_id", using: :btree

  create_table "pollination_places", force: true do |t|
    t.string   "farmer_first_name"
    t.string   "farmer_last_name"
    t.string   "farm_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "phone"
    t.string   "zip"
    t.string   "email_address"
    t.integer  "plant_id"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "elevation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pollination_places", ["plant_id"], name: "index_pollination_places_on_plant_id", using: :btree

  create_table "system_setups", force: true do |t|
    t.string   "name"
    t.integer  "apiary_id"
    t.integer  "beekeeper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "system_setups", ["apiary_id"], name: "index_system_setups_on_apiary_id", using: :btree
  add_index "system_setups", ["beekeeper_id"], name: "index_system_setups_on_beekeeper_id", using: :btree

end
