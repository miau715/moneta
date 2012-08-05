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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120805073010) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "money",        :default => 0
    t.integer  "tracks_count", :default => 0
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "exchange_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.integer  "price"
    t.string   "description"
    t.string   "note"
    t.integer  "category_id"
    t.date     "exchange_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
  end

end
