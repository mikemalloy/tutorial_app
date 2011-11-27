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

ActiveRecord::Schema.define(:version => 20111117234942) do

  create_table "browsers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "connections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_list_items", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "email_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_lists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "metrics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["created_at"], :name => "index_microposts_on_created_at"
  add_index "microposts", ["user_id"], :name => "index_microposts_on_user_id"

  create_table "operating_systems", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performance_test_results", :force => true do |t|
    t.integer  "performance_test_id"
    t.float    "measure1max"
    t.float    "measure1min"
    t.float    "measure1avg"
    t.text     "measure1values"
    t.float    "measure2max"
    t.float    "measure2min"
    t.float    "measure2avg"
    t.text     "measure2values"
    t.float    "measure3max"
    t.float    "measure3min"
    t.float    "measure3avg"
    t.text     "measure3values"
    t.float    "measure4max"
    t.float    "measure4min"
    t.float    "measure4avg"
    t.text     "measure4values"
    t.float    "measure5max"
    t.float    "measure5min"
    t.text     "measure5values"
    t.datetime "date_run"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "measure5avg"
    t.float    "measure1median"
    t.float    "measure2median"
    t.float    "measure3median"
    t.float    "measure4median"
    t.float    "measure5median"
    t.string   "build"
  end

  create_table "performance_tests", :force => true do |t|
    t.string   "name"
    t.string   "measure1name"
    t.string   "measure2name"
    t.string   "measure3name"
    t.string   "measure4name"
    t.string   "measure5name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "measure1desc"
    t.text     "measure2desc"
    t.text     "measure3desc"
    t.text     "measure4desc"
    t.text     "measure5desc"
    t.boolean  "uses_levels"
    t.float    "level1_max"
    t.float    "level2_max"
    t.float    "level3_max"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptest_results", :force => true do |t|
    t.integer  "ptest_id"
    t.string   "environment"
    t.integer  "device_id"
    t.integer  "operating_system_id"
    t.integer  "connection_id"
    t.integer  "browser_id"
    t.text     "values"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptests", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.integer  "metric_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_results", :force => true do |t|
    t.datetime "date_run"
    t.integer  "project_id"
    t.string   "server_rev"
    t.string   "client_rev"
    t.integer  "number_tests"
    t.integer  "number_passed"
    t.integer  "number_failed"
    t.integer  "actual_failed"
    t.integer  "false_neg"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "result"
    t.boolean  "send_email"
    t.integer  "test_suite_id"
    t.integer  "num_automated"
    t.integer  "time_elapsed"
    t.string   "jira_tickets"
    t.text     "da_results"
    t.integer  "manual_passed"
    t.integer  "manual_failed"
    t.integer  "manual_time_elapsed"
  end

  create_table "test_suites", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "suite_type"
    t.integer  "num_tests"
    t.integer  "num_automated"
    t.integer  "manual_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
