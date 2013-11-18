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

ActiveRecord::Schema.define(:version => 20131118223336) do

  create_table "ads", :force => true do |t|
    t.string   "image_url"
    t.boolean  "visible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "combos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.string   "image_url"
    t.boolean  "visible"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "coupons", :force => true do |t|
    t.string   "image_url"
    t.boolean  "visible"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "image_url_thumb"
    t.string   "name"
  end

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.boolean  "visible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gallery_images", :force => true do |t|
    t.string   "description"
    t.string   "image_url"
    t.integer  "gallery_id"
    t.boolean  "visible"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.boolean  "visible"
    t.integer  "parent_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orders", :force => true do |t|
    t.text     "data"
    t.string   "rp_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "phone"
    t.string   "email"
    t.boolean  "subscribed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
