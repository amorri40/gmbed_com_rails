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

ActiveRecord::Schema.define(:version => 20121012190640) do

  create_table "game_posts", :force => true do |t|
    t.integer  "game_id"
    t.string   "comment"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id",    :null => false
  end

  create_table "games", :force => true do |t|
    t.string  "name",        :limit => 24,  :default => "example",     :null => false
    t.string  "description", :limit => 500, :default => "none",        :null => false
    t.string  "author",      :limit => 20,  :default => "tgmg",        :null => false
    t.integer "genre",                      :default => 0,             :null => false
    t.string  "link",        :limit => 500, :default => "example.zip", :null => false
    t.integer "rating",                     :default => 5,             :null => false
    t.string  "exe",         :limit => 30,  :default => "example.exe", :null => false
    t.string  "width",       :limit => 4,   :default => "640",         :null => false
    t.string  "height",      :limit => 4,   :default => "480",         :null => false
    t.string  "parameters",  :limit => 200,                            :null => false
    t.string  "thumb",       :limit => 100,                            :null => false
    t.string  "backcolor",   :limit => 5,   :default => "00000",       :null => false
    t.string  "bimage",      :limit => 600,                            :null => false
    t.string  "pimage",      :limit => 600,                            :null => false
    t.string  "limage",      :limit => 600,                            :null => false
    t.string  "loadwidth",   :limit => 4,                              :null => false
    t.string  "loadheight",  :limit => 4,                              :null => false
    t.string  "loadx",       :limit => 4,                              :null => false
    t.string  "loady",       :limit => 4,                              :null => false
  end

  create_table "games_old", :force => true do |t|
    t.string  "name",        :limit => 24,  :default => "example",     :null => false
    t.string  "description", :limit => 500, :default => "none",        :null => false
    t.string  "author",      :limit => 20,  :default => "tgmg",        :null => false
    t.integer "genre",                      :default => 0,             :null => false
    t.string  "link",        :limit => 500, :default => "example.zip", :null => false
    t.integer "rating",                     :default => 5,             :null => false
    t.string  "exe",         :limit => 30,  :default => "example.exe", :null => false
    t.string  "width",       :limit => 4,   :default => "640",         :null => false
    t.string  "height",      :limit => 4,   :default => "480",         :null => false
    t.string  "parameters",  :limit => 200,                            :null => false
    t.string  "thumb",       :limit => 100,                            :null => false
    t.string  "backcolor",   :limit => 5,   :default => "00000",       :null => false
    t.string  "bimage",      :limit => 600,                            :null => false
    t.string  "pimage",      :limit => 600,                            :null => false
    t.string  "limage",      :limit => 600,                            :null => false
    t.string  "loadwidth",   :limit => 4,                              :null => false
    t.string  "loadheight",  :limit => 4,                              :null => false
    t.string  "loadx",       :limit => 4,                              :null => false
    t.string  "loady",       :limit => 4,                              :null => false
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "proper_games", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "author"
    t.string   "link"
    t.integer  "rating"
    t.string   "exe"
    t.integer  "width"
    t.integer  "height"
    t.string   "parameters"
    t.string   "thumb"
    t.string   "backcolor"
    t.string   "bimage"
    t.string   "pimage"
    t.string   "limage"
    t.integer  "load_width"
    t.integer  "load_height"
    t.integer  "loadx"
    t.integer  "loady"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "usergroups", :force => true do |t|
    t.string   "name"
    t.string   "user_title"
    t.string   "html_pre"
    t.string   "html_post"
    t.string   "perms"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usergroups_users", :id => false, :force => true do |t|
    t.integer "usergroup_id", :null => false
    t.integer "user_id",      :null => false
  end

  create_table "users", :primary_key => "userid", :force => true do |t|
    t.string   "username",               :limit => 25,                 :null => false
    t.string   "usergroupid",                          :default => ""
    t.string   "password",                             :default => ""
    t.string   "salt",                                 :default => ""
    t.string   "regtime",                              :default => ""
    t.string   "lastactivity",                         :default => ""
    t.string   "lastvisit",                            :default => ""
    t.string   "email",                  :limit => 75,                 :null => false
    t.string   "dob",                                  :default => ""
    t.string   "timezone",                             :default => ""
    t.string   "dst",                                  :default => ""
    t.string   "av",                                   :default => ""
    t.string   "aim",                                  :default => ""
    t.string   "msn",                                  :default => ""
    t.string   "yim",                                  :default => ""
    t.string   "bio",                                  :default => ""
    t.string   "loc",                                  :default => ""
    t.string   "occ",                                  :default => ""
    t.string   "homepage",                             :default => ""
    t.string   "reg_time",                             :default => ""
    t.string   "last_activity",                        :default => ""
    t.string   "last_visit",                           :default => ""
    t.string   "encrypted_password",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "user_id",                                              :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "username"

  create_table "users_old", :primary_key => "userid", :force => true do |t|
    t.string   "username",      :limit => 25,                    :null => false
    t.integer  "usergroupid",                                    :null => false
    t.string   "password",      :limit => 32,                    :null => false
    t.string   "salt",          :limit => 3,                     :null => false
    t.integer  "regtime",                                        :null => false
    t.integer  "lastactivity",                :default => 0,     :null => false
    t.integer  "lastvisit",                   :default => 0,     :null => false
    t.string   "email",         :limit => 75,                    :null => false
    t.integer  "dob",                         :default => 0,     :null => false
    t.float    "timezone",                    :default => 0.0,   :null => false
    t.boolean  "dst",                         :default => false, :null => false
    t.string   "av",            :limit => 3,                     :null => false
    t.string   "aim",           :limit => 16,                    :null => false
    t.string   "msn",           :limit => 75,                    :null => false
    t.string   "yim",           :limit => 32,                    :null => false
    t.string   "bio",                                            :null => false
    t.string   "loc",           :limit => 50,                    :null => false
    t.string   "occ",           :limit => 50,                    :null => false
    t.string   "homepage",      :limit => 50,                    :null => false
    t.datetime "reg_time",                                       :null => false
    t.datetime "last_activity",                                  :null => false
    t.datetime "last_visit",                                     :null => false
  end

  add_index "users_old", ["username"], :name => "username"

end
