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

ActiveRecord::Schema.define(version: 2019_02_27_075656) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "image", null: false
    t.string "status", null: false
    t.string "item_status", null: false
    t.integer "price", null: false
    t.string "delivery_charge_burden", null: false
    t.string "days_up_to_delivery", null: false
    t.string "prefecture", null: false
    t.integer "profile_id", null: false
    t.integer "category_id", null: false
    t.integer "perchaser_user_id", null: false
    t.integer "saler_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name", null: false
    t.string "nickname", null: false
    t.date "birthdate", null: false
    t.integer "postal_code", null: false
    t.string "prefecture", null: false
    t.string "municipality"
    t.string "block"
    t.integer "sales_money", default: 0, null: false
    t.integer "mercari_point", default: 0, null: false
    t.string "payment_methods", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userinfos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
