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

ActiveRecord::Schema.define(:version => 20150512190332) do

  create_table "account_infos", :force => true do |t|
    t.string   "email_id"
    t.string   "password"
    t.string   "passphrase"
    t.integer  "partner_info_id"
    t.string   "status"
    t.string   "session_status"
    t.integer  "reliability_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "address_infos", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "state"
    t.string   "city"
    t.string   "zip"
    t.string   "validation_status"
    t.integer  "created_by"
    t.string   "updated_by"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contact_infos", :force => true do |t|
    t.string   "contact_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_id"
    t.string   "phone_number"
    t.string   "address_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "domain_hosts", :force => true do |t|
    t.integer  "partner_info_id"
    t.string   "host_name"
    t.string   "domain_name"
    t.string   "status"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "fare_infos", :force => true do |t|
    t.string   "fare_type"
    t.integer  "total_fare"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "location_infos", :force => true do |t|
    t.integer  "partner_info_id"
    t.integer  "contact_id"
    t.string   "location_name"
    t.integer  "address_id"
    t.integer  "status"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "partner_infos", :force => true do |t|
    t.string   "partner_id"
    t.string   "partner_name"
    t.integer  "primary_contact_id"
    t.integer  "status"
    t.integer  "reliability_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "postings", :force => true do |t|
    t.integer  "source_geo"
    t.integer  "destination_geo"
    t.datetime "travel_date_time"
    t.integer  "travel_date_time_utc"
    t.integer  "available_seats"
    t.integer  "fare_id"
    t.integer  "contact_id"
    t.integer  "status"
    t.string   "city"
    t.string   "state"
    t.string   "pincode"
    t.string   "from_place_tag1"
    t.string   "from_place_tag2"
    t.string   "from_place_tag3"
    t.string   "to_place_tag1"
    t.string   "to_place_tag2"
    t.string   "to_place_tag3"
    t.integer  "number_of_routes"
    t.string   "is_spam"
    t.integer  "reliability_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "reliability_infos", :force => true do |t|
    t.string   "description"
    t.integer  "star_rating"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "route_via_infos", :force => true do |t|
    t.integer  "postings_id"
    t.string   "route_via"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "session_infos", :force => true do |t|
    t.string   "uid"
    t.integer  "account_info_id"
    t.integer  "status"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
