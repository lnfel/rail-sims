# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_01_225647) do

  create_table "addresses", force: :cascade do |t|
    t.integer "house_number"
    t.string "block"
    t.string "phase"
    t.integer "building_number"
    t.string "building_name"
    t.integer "floor_number"
    t.string "room_number"
    t.string "street_name"
    t.string "subdivision"
    t.string "compound"
    t.string "district"
    t.integer "municipality_id"
    t.integer "city_id"
    t.integer "region_id"
    t.integer "country_id"
    t.string "zip_code"
    t.integer "modified_by_account_type_id"
    t.integer "modified_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_addresses_on_city_id"
    t.index ["country_id"], name: "index_addresses_on_country_id"
    t.index ["modified_by_account_type_id"], name: "index_addresses_on_modified_by_account_type_id"
    t.index ["modified_by_id"], name: "index_addresses_on_modified_by_id"
    t.index ["municipality_id"], name: "index_addresses_on_municipality_id"
    t.index ["region_id"], name: "index_addresses_on_region_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_id_prefix"
    t.string "student_id"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "name_prefix"
    t.string "name_suffix"
    t.string "status"
    t.integer "address_id"
    t.string "telephone_number"
    t.integer "mobile_number"
    t.string "email"
    t.date "birthdate"
    t.string "birthplace"
    t.integer "civil_status_id"
    t.integer "gender_id"
    t.string "religion"
    t.string "nationality"
    t.string "blood_type"
    t.integer "weight"
    t.float "height"
    t.string "father_name"
    t.string "father_last_name"
    t.string "father_middle_name"
    t.integer "father_contact_number"
    t.string "mother_name"
    t.string "mother_maiden_last_name"
    t.string "mother_maiden_middle_name"
    t.integer "mother_contact_number"
    t.string "guardian_fullname"
    t.integer "guardian_relationship_id"
    t.integer "guardian_contact_number"
    t.integer "modified_by_account_type_id"
    t.integer "modified_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_students_on_address_id"
    t.index ["civil_status_id"], name: "index_students_on_civil_status_id"
    t.index ["gender_id"], name: "index_students_on_gender_id"
    t.index ["guardian_relationship_id"], name: "index_students_on_guardian_relationship_id"
    t.index ["modified_by_account_type_id"], name: "index_students_on_modified_by_account_type_id"
    t.index ["modified_by_id"], name: "index_students_on_modified_by_id"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "countries"
  add_foreign_key "addresses", "modified_bies"
  add_foreign_key "addresses", "modified_by_account_types"
  add_foreign_key "addresses", "municipalities"
  add_foreign_key "addresses", "regions"
  add_foreign_key "students", "addresses"
  add_foreign_key "students", "civil_statuses"
  add_foreign_key "students", "genders"
  add_foreign_key "students", "guardian_relationships"
  add_foreign_key "students", "modified_bies"
  add_foreign_key "students", "modified_by_account_types"
end
