# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100218211416) do

  create_table "acts_as_xapian_jobs", :force => true do |t|
    t.string  "model",    :null => false
    t.integer "model_id", :null => false
    t.string  "action",   :null => false
  end

  add_index "acts_as_xapian_jobs", ["model", "model_id"], :name => "index_acts_as_xapian_jobs_on_model_and_model_id", :unique => true

  create_table "categories", :force => true do |t|
    t.integer  "parent_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.integer  "order"
    t.string   "title"
  end

  create_table "custom_pages", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.string   "sub_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.integer  "category_id"
    t.string   "description"
    t.integer  "link_type_id"
    t.string   "link"
    t.string   "caption"
    t.integer  "parent_id"
    t.integer  "size"
    t.integer  "width"
    t.integer  "height"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "link_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listing_images", :force => true do |t|
    t.integer  "listing_id"
    t.integer  "image_id"
    t.boolean  "enabled"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "size"
  end

  create_table "listings", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.string   "sub_title"
    t.string   "location_city"
    t.string   "location_area"
    t.string   "location_postcode"
    t.datetime "event_date"
    t.integer  "type_id"
    t.string   "contact_email_address"
    t.string   "contact_name"
    t.integer  "user_id"
    t.text     "content"
    t.string   "reference"
    t.string   "contact_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.integer  "custom_page_id"
    t.string   "title"
    t.text     "content"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_pages", :force => true do |t|
    t.integer  "page_id"
    t.string   "title"
    t.text     "content"
    t.integer  "order"
    t.string   "location_title"
    t.string   "location_city"
    t.string   "location_area"
    t.string   "location_postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.integer  "category_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "url"
    t.integer  "order"
  end

end
