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

ActiveRecord::Schema.define(version: 20141124221438) do

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.date     "date"
    t.string   "title"
    t.string   "venue"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenditures", force: true do |t|
    t.date     "date"
    t.float    "salary"
    t.float    "maintenance"
    t.float    "utility_bills"
    t.float    "total_expenditure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.date     "date"
    t.float    "salary"
    t.float    "maintenance"
    t.float    "utility_bills"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "Total_expenses"
  end

  create_table "revenues", force: true do |t|
    t.float    "tithes"
    t.float    "offerings"
    t.float    "donations"
    t.float    "misc_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
