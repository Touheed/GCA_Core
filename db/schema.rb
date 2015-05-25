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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150526174426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "cities", force: true do |t|
    t.string   "city_name"
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "counties", force: true do |t|
    t.string   "county_name"
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "course_hole_tees", force: true do |t|
    t.integer  "tee_id",         limit: 8
    t.integer  "course_hole_id", limit: 8
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "created_by",     limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",     limit: 8
    t.datetime "updated_date"
  end

  create_table "course_holes", force: true do |t|
    t.integer  "golf_course_id",    limit: 8
    t.integer  "par"
    t.decimal  "stroke_index"
    t.integer  "course_hole_order"
    t.decimal  "hole_latitude"
    t.decimal  "hole_longitude"
    t.integer  "yardage"
    t.integer  "bearing"
    t.integer  "created_by",        limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",        limit: 8
    t.datetime "updated_date"
  end

  create_table "favourite_courses", force: true do |t|
    t.integer  "golf_course_id", limit: 8
    t.integer  "gca_user_id",    limit: 8
    t.integer  "created_by",     limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",     limit: 8
    t.datetime "updated_date"
  end

  create_table "gca_roles", force: true do |t|
    t.string   "role_name"
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "gca_users", force: true do |t|
    t.string   "user_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "cell_number"
    t.string   "social_media_provider"
    t.string   "social_media_id"
    t.integer  "created_by",            limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",            limit: 8
    t.datetime "updated_date"
    t.string   "realm"
    t.string   "username"
    t.string   "password"
    t.string   "credentials"
    t.string   "challenges"
    t.string   "email"
    t.boolean  "emailverified"
    t.string   "verificationtoken"
    t.string   "status"
    t.datetime "created"
    t.datetime "lastupdated"
    t.string   "provider"
    t.string   "nick_name"
  end

  create_table "golf_club_tournament_courses", force: true do |t|
    t.integer  "golf_course_id",          limit: 8
    t.integer  "golf_club_tournament_id", limit: 8
    t.integer  "created_by",              limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",              limit: 8
    t.datetime "updated_date"
  end

  create_table "golf_club_tournaments", force: true do |t|
    t.integer  "golf_club_id",  limit: 8
    t.string   "name"
    t.string   "city"
    t.string   "locality"
    t.string   "title"
    t.string   "description"
    t.string   "status"
    t.string   "starting_hole"
    t.integer  "created_by",    limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",    limit: 8
    t.datetime "updated_date"
  end

  create_table "golf_clubs", force: true do |t|
    t.string   "club_name"
    t.integer  "city_id",      limit: 8
    t.integer  "county_id",    limit: 8
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "golf_course_features", force: true do |t|
    t.integer  "hole_number"
    t.string   "feature_type"
    t.integer  "show_marker"
    t.decimal  "front_latitude"
    t.decimal  "front_longitude"
    t.decimal  "back_latitude"
    t.decimal  "back_longitude"
    t.string   "description"
    t.integer  "created_by",      limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",      limit: 8
    t.datetime "updated_date"
    t.integer  "golf_course_id",  limit: 8
    t.integer  "course_hole_id",  limit: 8
  end

  create_table "golf_courses", force: true do |t|
    t.integer  "golf_club_id",   limit: 8
    t.string   "course_name"
    t.decimal  "course_rating"
    t.integer  "created_by",     limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",     limit: 8
    t.datetime "updated_date"
    t.decimal  "langitude"
    t.decimal  "longitude"
    t.integer  "course_slope"
    t.integer  "total_hole"
    t.integer  "state_id",       limit: 8
    t.integer  "city_id",        limit: 8
    t.string   "course_address"
    t.string   "street"
    t.integer  "zip"
    t.integer  "county_id",      limit: 8
    t.text     "phone"
    t.string   "fax"
    t.string   "url"
    t.string   "architech"
    t.string   "status"
    t.string   "quest_policy"
    t.integer  "founded"
  end

  create_table "group_members", force: true do |t|
    t.integer  "player_id",    limit: 8
    t.integer  "group_id",     limit: 8
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "groups", force: true do |t|
    t.string   "group_name"
    t.string   "group_type"
    t.integer  "group_owner",  limit: 8
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "invites", force: true do |t|
    t.integer  "gca_user_id",     limit: 8
    t.string   "invite_email_id"
    t.integer  "created_by",      limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",      limit: 8
    t.datetime "updated_date"
    t.integer  "round_id",        limit: 8
    t.string   "nick_name"
    t.string   "status"
    t.integer  "player_id",       limit: 8
  end

  create_table "leaderboards", force: true do |t|
    t.integer  "user_tournament_id", limit: 8
    t.integer  "course_hole_id",     limit: 8
    t.decimal  "score"
    t.integer  "putts"
    t.integer  "fairway_hits"
    t.decimal  "handicap_index"
    t.integer  "created_by",         limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",         limit: 8
    t.datetime "updated_date"
  end

  create_table "players", force: true do |t|
    t.integer  "gca_user_id",     limit: 8
    t.decimal  "handicap"
    t.integer  "tee_id",          limit: 8
    t.integer  "created_by",      limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",      limit: 8
    t.datetime "updated_date"
    t.boolean  "score"
    t.boolean  "putts"
    t.boolean  "fairway_hits"
    t.integer  "handicap_status", limit: 8
    t.string   "status"
    t.string   "nick_name"
  end

  create_table "round_golf_courses", force: true do |t|
    t.integer  "round_id",       limit: 8
    t.integer  "golf_course_id", limit: 8
    t.integer  "created_by",     limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",     limit: 8
    t.datetime "updated_date"
  end

  create_table "round_group_members", force: true do |t|
    t.integer  "player_id",      limit: 8
    t.integer  "round_group_id", limit: 8
    t.integer  "created_by",     limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",     limit: 8
    t.datetime "updated_date"
  end

  create_table "round_groups", force: true do |t|
    t.integer  "round_id",     limit: 8
    t.string   "group_name"
    t.string   "group_type"
    t.integer  "group_owner",  limit: 8
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "rounds", force: true do |t|
    t.integer  "score_card_type_id", limit: 8
    t.integer  "created_by",         limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",         limit: 8
    t.datetime "updated_date"
    t.integer  "course_hole_id",     limit: 8
    t.boolean  "score"
    t.boolean  "putts"
    t.boolean  "fairway_hits"
    t.string   "status"
  end

  create_table "score_card_types", force: true do |t|
    t.string   "description"
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "score_cards", force: true do |t|
    t.integer  "round_id",              limit: 8
    t.integer  "course_hole_id",        limit: 8
    t.integer  "round_group_member_id", limit: 8
    t.decimal  "handicap_index"
    t.decimal  "score"
    t.integer  "putts"
    t.integer  "fairway_hits"
    t.integer  "created_by",            limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",            limit: 8
    t.datetime "updated_date"
  end

  create_table "states", force: true do |t|
    t.string   "state_name"
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "tees", force: true do |t|
    t.string   "description"
    t.string   "color_code"
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "user_details", force: true do |t|
    t.integer  "gca_user_id",     limit: 8
    t.decimal  "handicap"
    t.string   "handicap_status"
    t.integer  "tee_id",          limit: 8
    t.boolean  "score"
    t.boolean  "putts"
    t.boolean  "fairway_hits"
    t.integer  "created_by",      limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",      limit: 8
    t.datetime "updated_date"
  end

  create_table "user_roles", force: true do |t|
    t.integer  "gca_user_id",  limit: 8
    t.integer  "gca_role_id",  limit: 8
    t.integer  "created_by",   limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",   limit: 8
    t.datetime "updated_date"
  end

  create_table "user_tournaments", force: true do |t|
    t.integer  "gca_user_id",             limit: 8
    t.integer  "golf_club_tournament_id", limit: 8
    t.text     "authentication_token"
    t.string   "status"
    t.integer  "created_by",              limit: 8
    t.datetime "created_date"
    t.integer  "updated_by",              limit: 8
    t.datetime "updated_date"
  end

end
