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

ActiveRecord::Schema.define(version: 20150413183403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "start_time",                        null: false
    t.datetime "end_time",                          null: false
    t.integer  "treatment_plan_id",                 null: false
    t.boolean  "finalized",         default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "appointments", ["treatment_plan_id"], name: "index_appointments_on_treatment_plan_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "first_name",             null: false
    t.string   "last_name",              null: false
    t.string   "address",                null: false
    t.integer  "zip",                    null: false
    t.string   "city",                   null: false
    t.date     "birthday",               null: false
    t.string   "social_security_number", null: false
    t.string   "email",                  null: false
    t.string   "phone_number",           null: false
    t.string   "gender",                 null: false
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "patients", ["user_id"], name: "index_patients_on_user_id", using: :btree

  create_table "treatment_plans", force: :cascade do |t|
    t.string   "title",       null: false
    t.integer  "patient_id",  null: false
    t.datetime "finished_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "treatment_plans", ["patient_id"], name: "index_treatment_plans_on_patient_id", using: :btree

  create_table "treatment_plans_treatments", force: :cascade do |t|
    t.integer  "treatment_plan_id", null: false
    t.integer  "treatment_id",      null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "treatment_plans_treatments", ["treatment_id"], name: "index_treatment_plans_treatments_on_treatment_id", using: :btree
  add_index "treatment_plans_treatments", ["treatment_plan_id"], name: "index_treatment_plans_treatments_on_treatment_plan_id", using: :btree

  create_table "treatments", force: :cascade do |t|
    t.string   "title",       null: false
    t.integer  "price",       null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "first_name",                         null: false
    t.string   "last_name",                          null: false
    t.boolean  "doctor",             default: false
    t.boolean  "admin",              default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "xrays", force: :cascade do |t|
    t.string   "title"
    t.string   "picture_uid"
    t.integer  "patient_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "xrays", ["patient_id"], name: "index_xrays_on_patient_id", using: :btree

end
