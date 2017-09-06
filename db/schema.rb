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

ActiveRecord::Schema.define(version: 20170906093504) do

  create_table "coupon_list_masters", force: :cascade do |t|
    t.string   "coupon_site"
    t.string   "coupon_url"
    t.text     "coupon_title"
    t.text     "coupon_summary"
    t.string   "coupon_addr"
    t.string   "coupon_access"
    t.integer  "coupon_teika"
    t.integer  "coupon_kakaku"
    t.string   "coupon_shop"
    t.string   "coupon_phote"
    t.integer  "coupon_lat"
    t.integer  "coupon_lng"
    t.datetime "coupon_untilldatetime"
    t.integer  "coupon_max"
    t.integer  "coupon_sold"
    t.integer  "priority"
    t.string   "coupon_original_url"
    t.string   "coupon_site_url"
    t.string   "category_name"
    t.string   "category_type"
    t.string   "site_code"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "login_users", force: :cascade do |t|
    t.string   "nickname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id"
    t.string   "client_id"
    t.string   "insta_user_id"
    t.string   "insta_access_token_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
