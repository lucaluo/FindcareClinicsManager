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

ActiveRecord::Schema.define(:version => 0) do

HEAD

  create_table "Clinic", :primary_key => "clinic_id", :force => true do |t|
    t.timestamp "last_updated",                                                                              :null => false
    t.string    "clinic_name",                                                        :default => "Unknown", :null => false
    t.string    "alternative_name"
    t.decimal   "lat",                                 :precision => 10, :scale => 6
    t.decimal   "lng",                                 :precision => 10, :scale => 6
    t.text      "primary_source"
    t.string    "street_addr1",                                                       :default => "Uknown",  :null => false
    t.string    "street_addr2"
    t.string    "city",                  :limit => 50,                                :default => "Uknown",  :null => false
    t.string    "state",                 :limit => 20,                                :default => "Uknown",  :null => false
    t.string    "zipcode",               :limit => 10,                                :default => "Uknown",  :null => false
    t.string    "primary_phone"
    t.string    "appointment_phone"
    t.string    "donation_phone"
    t.string    "phone_comments"
    t.string    "fax"
    t.string    "clinic_type"
    t.string    "website"
    t.string    "primary_contact"
    t.string    "primary_email"
    t.string    "other_email"
    t.string    "fqhc",                  :limit => 0
    t.string    "other_languages"
    t.text      "pat_population_served"
    t.string    "area_served"
    t.text      "comments"
    t.text      "other_service"
    t.integer   "low_cost_amount"
    t.integer   "sliding_scale_low"
    t.integer   "sliding_scale_high"
    t.string    "no_cost",               :limit => 0
    t.string    "low_cost",              :limit => 0
    t.string    "sliding_scale",         :limit => 0
    t.string    "uninsured_only",        :limit => 0
    t.string    "medicare",              :limit => 0
    t.string    "medicaid",              :limit => 0
    t.string    "CHIP",                  :limit => 0
    t.string    "private",               :limit => 0
    t.string    "payment_call_clinic",   :limit => 0
    t.text      "payment_comments"
  end

  add_index "Clinic", ["clinic_id"], :name => "clinic_id", :unique => true
  add_index "Clinic", ["clinic_name"], :name => "idx_name"
  add_index "Clinic", ["lat"], :name => "idx_lat"
  add_index "Clinic", ["lng"], :name => "idx_lng"
  add_index "Clinic", ["low_cost_amount"], :name => "idx_low_amount"
  add_index "Clinic", ["sliding_scale_low", "sliding_scale_high"], :name => "idx_sliding_scale"

  create_table "Clinic_Service", :id => false, :force => true do |t|
    t.string  "service_abbr",     :limit => 4, :null => false
    t.integer "clinic_id",        :limit => 8, :null => false
    t.integer "dummy_service_pk", :limit => 8, :null => false
  end

  add_index "Clinic_Service", ["dummy_service_pk"], :name => "dummy_service_pk", :unique => true
  add_index "Clinic_Service", ["service_abbr"], :name => "idx_ser"

  create_table "Hours", :id => false, :force => true do |t|
    t.integer "clinic_id",         :limit => 8,                          :null => false
    t.string  "hour_type",         :limit => 127, :default => "General", :null => false
    t.string  "hours_call_clinic", :limit => 0
    t.string  "mon"
    t.string  "tue"
    t.string  "wed"
    t.string  "thr"
    t.string  "fri"
    t.string  "sat"
    t.string  "sun"
    t.text    "comment"
    t.string  "appointment_only",  :limit => 0
    t.string  "walkin_only",       :limit => 0
    t.integer "dummy_hour_pk",     :limit => 8,                          :null => false
  end

  add_index "Hours", ["dummy_hour_pk"], :name => "dummy_hour_pk", :unique => true

  create_table "Service", :primary_key => "service_abbr", :force => true do |t|
    t.text "description"
  end
end
