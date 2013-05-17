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

ActiveRecord::Schema.define(:version => 20130516085837) do

  create_table "issues", :force => true do |t|
    t.integer  "issue_number"
    t.integer  "series_id"
    t.boolean  "own"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "cover"
  end

  add_index "issues", ["series_id", "created_at"], :name => "index_issues_on_series_id_and_created_at"

  create_table "series", :force => true do |t|
    t.string   "title"
    t.boolean  "pull",       :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "slug"
  end

  add_index "series", ["slug"], :name => "index_series_on_slug", :unique => true
  add_index "series", ["title"], :name => "index_series_on_title", :unique => true

  create_table "volumes", :force => true do |t|
    t.integer  "volume_number"
    t.integer  "series_id"
    t.boolean  "own"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "volumes", ["series_id", "created_at"], :name => "index_volumes_on_series_id_and_created_at"

end
