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

ActiveRecord::Schema.define(version: 20141129211344) do

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gaps", force: true do |t|
    t.string  "measure_name"
    t.integer "patient_id"
    t.integer "task_id"
    t.integer "measure_id"
    t.integer "payer_code_id"
    t.boolean "open"
  end

  create_table "measures", force: true do |t|
    t.string   "insurer"
    t.float    "benchmark"
    t.boolean  "gap"
    t.string   "status"
    t.text     "qualifying_patients"
    t.boolean  "flagged"
    t.string   "pcmh_network_key"
    t.string   "category"
    t.text     "explaination"
    t.text     "measure_name"
    t.integer  "plan_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_measures", force: true do |t|
    t.integer  "measure_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_plans", force: true do |t|
    t.integer  "plan_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_posts", force: true do |t|
    t.integer  "patient_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_tasks", force: true do |t|
    t.integer  "patient_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.string  "middlename"
    t.string  "cellphone"
    t.string  "homephone"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "facebook_url"
    t.string  "gender"
    t.string  "SSN"
    t.string  "member_id"
    t.integer "plan_id"
    t.date    "DOB"
  end

  create_table "payer_codes", force: true do |t|
    t.string   "CPT"
    t.string   "ICD9"
    t.string   "ICD10"
    t.string   "ICF"
    t.string   "HCPCS"
    t.string   "Eye_codes"
    t.integer  "measure_id"
    t.integer  "plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", force: true do |t|
    t.string  "plan_title"
    t.string  "insurance"
    t.integer "total_revenue"
    t.integer "revenue_increase"
    t.date    "last_revenue_increase"
    t.integer "goal"
    t.string  "plan_id"
    t.date    "start_date"
    t.string  "duration"
  end

  create_table "posts", force: true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "practices", force: true do |t|
    t.string   "name"
    t.string   "main_location"
    t.string   "primary_contact"
    t.string   "tax_id"
    t.integer  "provider_id"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provider_patients", force: true do |t|
    t.integer  "provider_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "username"
    t.string   "title"
    t.string   "office"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "practice_id"
  end

  create_table "tasks", force: true do |t|
    t.string   "insurer"
    t.string   "plan_name"
    t.text     "description"
    t.string   "status"
    t.integer  "plan_id"
    t.integer  "patient_id"
    t.integer  "measure_id"
    t.boolean  "gap"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_patients", force: true do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_providers", force: true do |t|
    t.integer  "user_id"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "office"
    t.string   "password_digest"
  end

end
