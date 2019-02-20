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

ActiveRecord::Schema.define(version: 2019_02_15_015740) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "head_quarters"
    t.text "statement"
    t.string "url"
    t.string "email"
    t.text "description"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.integer "category"
    t.integer "job_type"
    t.string "region"
    t.string "apply_link"
    t.text "description"
    t.integer "company_id"
    t.boolean "highlight"
    t.boolean "featured"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "job_title"
    t.integer "job_category"
    t.integer "job_type"
    t.string "company_head_quarters"
    t.string "job_region"
    t.string "job_apply_link"
    t.text "job_description"
    t.string "company_name"
    t.string "company_statement"
    t.string "company_url"
    t.string "company_email"
    t.text "company_description"
    t.string "company_logo"
    t.boolean "highlight_job"
    t.boolean "feature_job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
