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

ActiveRecord::Schema.define(:version => 20130610173328) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "contact"
    t.string   "email"
    t.string   "street_one"
    t.string   "street_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fabrics", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.decimal  "length"
    t.string   "silktype"
    t.date     "purchase_date"
    t.decimal  "purchase_price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "sku"
    t.integer  "fabric_id"
    t.boolean  "prerequisites"
    t.boolean  "died"
    t.boolean  "finished"
    t.boolean  "sewn"
    t.boolean  "packaged"
    t.decimal  "asking_price"
    t.decimal  "sold_price"
    t.string   "location"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.date     "start_date"
    t.date     "goal_date"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
