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

ActiveRecord::Schema.define(version: 20160305212554) do

  create_table "caloric_intakes", force: :cascade do |t|
    t.decimal  "consumed_calories", precision: 6, scale: 2
    t.datetime "calories_date"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "exercise_types", force: :cascade do |t|
    t.string   "exercise_type_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "performed_exercises", force: :cascade do |t|
    t.integer  "exercise_type_id"
    t.decimal  "burned_calories",  precision: 7, scale: 2
    t.datetime "exercise_date"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "exercise_name"
  end

  create_table "step_counts", force: :cascade do |t|
    t.integer  "steps_taken"
    t.datetime "steps_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weights", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.decimal  "weight",      precision: 5, scale: 2
    t.date     "weight_date"
  end

end
