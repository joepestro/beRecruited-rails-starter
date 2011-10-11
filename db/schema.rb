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

ActiveRecord::Schema.define(:version => 20110930231127) do

  create_table "favorites", :force => true do |t|
    t.integer  "user_api_id"
    t.integer  "team_api_id"
    t.integer  "current_amount"
    t.integer  "last_week_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["team_api_id"], :name => "index_favorites_on_team_api_id"
  add_index "favorites", ["user_api_id", "team_api_id"], :name => "index_favorites_on_user_api_id_and_team_api_id"
  add_index "favorites", ["user_api_id"], :name => "index_favorites_on_user_api_id"

  create_table "teams", :force => true do |t|
    t.integer  "team_api_id"
    t.string   "location"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["team_api_id"], :name => "index_teams_on_team_api_id"

  create_table "users", :force => true do |t|
    t.integer  "user_api_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["user_api_id"], :name => "index_users_on_user_api_id"

end
