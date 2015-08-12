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

ActiveRecord::Schema.define(version: 20150807053758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_services", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "area_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.string   "photo"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "longitude"
    t.string   "latitude"
  end

  add_index "cities", ["department_id"], name: "index_cities_on_department_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "longitude"
    t.string   "latitude"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.string   "photo"
    t.integer  "country_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "longitude"
    t.string   "latitude"
  end

  add_index "departments", ["country_id"], name: "index_departments_on_country_id", using: :btree

  create_table "external_resources", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "service_type_services", force: :cascade do |t|
    t.integer  "service_type_id"
    t.integer  "service_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "service_type_services", ["service_id"], name: "index_service_type_services_on_service_id", using: :btree
  add_index "service_type_services", ["service_type_id"], name: "index_service_type_services_on_service_type_id", using: :btree

  create_table "service_types", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.integer  "tourist_site_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "services", ["tourist_site_id"], name: "index_services_on_tourist_site_id", using: :btree

  create_table "specific_locations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.string   "photo"
    t.integer  "city_id"
    t.integer  "area_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "longitude"
    t.string   "latitude"
  end

  add_index "specific_locations", ["area_type_id"], name: "index_specific_locations_on_area_type_id", using: :btree
  add_index "specific_locations", ["city_id"], name: "index_specific_locations_on_city_id", using: :btree

  create_table "tourist_site_app_services", force: :cascade do |t|
    t.integer  "tourist_site_id"
    t.integer  "app_service_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "tourist_site_app_services", ["app_service_id"], name: "index_tourist_site_app_services_on_app_service_id", using: :btree
  add_index "tourist_site_app_services", ["tourist_site_id"], name: "index_tourist_site_app_services_on_tourist_site_id", using: :btree

  create_table "tourist_site_categories", force: :cascade do |t|
    t.integer  "tourist_site_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "tourist_site_categories", ["category_id"], name: "index_tourist_site_categories_on_category_id", using: :btree
  add_index "tourist_site_categories", ["tourist_site_id"], name: "index_tourist_site_categories_on_tourist_site_id", using: :btree

  create_table "tourist_site_external_resources", force: :cascade do |t|
    t.integer  "tourist_site_id"
    t.integer  "external_resource_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "tourist_site_external_resources", ["external_resource_id"], name: "index_tourist_site_external_resources_on_external_resource_id", using: :btree
  add_index "tourist_site_external_resources", ["tourist_site_id"], name: "index_tourist_site_external_resources_on_tourist_site_id", using: :btree

  create_table "tourist_sites", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.string   "contact"
    t.string   "owner"
    t.string   "photo"
    t.integer  "specific_location_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "longitude"
    t.string   "latitude"
  end

  add_index "tourist_sites", ["specific_location_id"], name: "index_tourist_sites_on_specific_location_id", using: :btree

  add_foreign_key "cities", "departments"
  add_foreign_key "departments", "countries"
  add_foreign_key "service_type_services", "service_types"
  add_foreign_key "service_type_services", "services"
  add_foreign_key "services", "tourist_sites"
  add_foreign_key "specific_locations", "area_types"
  add_foreign_key "specific_locations", "cities"
  add_foreign_key "tourist_site_app_services", "app_services"
  add_foreign_key "tourist_site_app_services", "tourist_sites"
  add_foreign_key "tourist_site_categories", "categories"
  add_foreign_key "tourist_site_categories", "tourist_sites"
  add_foreign_key "tourist_site_external_resources", "external_resources"
  add_foreign_key "tourist_site_external_resources", "tourist_sites"
  add_foreign_key "tourist_sites", "specific_locations"
end
