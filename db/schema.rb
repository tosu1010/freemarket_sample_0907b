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

ActiveRecord::Schema.define(version: 2019_10_20_082935) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "postal_code", null: false
    t.string "city", null: false
    t.string "number", null: false
    t.string "building", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prefecture_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "balances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "deadline", null: false
    t.bigint "user_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandise_id"], name: "index_balances_on_merchandise_id"
    t.index ["user_id"], name: "index_balances_on_user_id"
  end

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment", null: false
    t.bigint "user_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandise_id"], name: "index_comments_on_merchandise_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "content", null: false
    t.integer "buy_or_sell"
    t.integer "occurrence_year"
    t.integer "occurrence_month"
    t.integer "occurrence_day"
    t.integer "occurrence_time"
    t.integer "occurrence_minute"
    t.integer "occurrence_friquence"
    t.text "bug_detail"
    t.string "name"
    t.text "bug_display_comment"
    t.bigint "merchandise_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandise_id"], name: "index_contacts_on_merchandise_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "credit_cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "card_number", null: false
    t.integer "limit_month", null: false
    t.integer "limit_year", null: false
    t.integer "security_code", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_credit_cards_on_user_id"
  end

  create_table "dealed_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment", null: false
    t.bigint "user_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandise_id"], name: "index_dealed_comments_on_merchandise_id"
    t.index ["user_id"], name: "index_dealed_comments_on_user_id"
  end

  create_table "deliveries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "shipping_charge", null: false
    t.string "shipping_area", null: false
    t.string "shipping_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_methods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "delivery_type_name", null: false
    t.string "company_name", null: false
    t.bigint "delivery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_id"], name: "index_delivery_methods_on_delivery_id"
  end

  create_table "evaluations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type"
    t.bigint "user_id", null: false
    t.bigint "purchase_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_evaluations_on_purchase_id"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "exhibit_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image", null: false
    t.bigint "exhibit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exhibit_id"], name: "index_exhibit_images_on_exhibit_id"
  end

  create_table "exhibits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status", null: false
    t.integer "size"
    t.bigint "user_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandise_id"], name: "index_exhibits_on_merchandise_id"
    t.index ["user_id"], name: "index_exhibits_on_user_id"
  end

  create_table "guides", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name", null: false
    t.boolean "whether_usefullness", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_guides_on_user_id"
  end

  create_table "likes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "value", null: false
    t.bigint "user_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandise_id"], name: "index_likes_on_merchandise_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "merchandises", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.integer "price", null: false
    t.bigint "delivery_id", null: false
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_merchandises_on_brand_id"
    t.index ["category_id"], name: "index_merchandises_on_category_id"
    t.index ["delivery_id"], name: "index_merchandises_on_delivery_id"
    t.index ["name", "category_id"], name: "index_merchandises_on_name_and_category_id"
  end

  create_table "news", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "whether_read", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notices_on_user_id"
  end

  create_table "personal_informations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "postal_code"
    t.string "prefecture_id"
    t.string "city"
    t.string "number"
    t.string "building"
    t.string "identification"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personal_informations_on_user_id"
  end

  create_table "points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "points"
    t.integer "expiration_date", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "purchases", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status", null: false
    t.bigint "user_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandise_id"], name: "index_purchases_on_merchandise_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "remittees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "bank_name", null: false
    t.integer "account_type", null: false
    t.integer "branch_code", null: false
    t.integer "account_number", null: false
    t.string "account_first_name", null: false
    t.string "account_last_name", null: false
    t.bigint "personal_information_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_information_id"], name: "index_remittees_on_personal_information_id"
  end

  create_table "to_dos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment", null: false
    t.bigint "user_id", null: false
    t.bigint "exhibit_id", null: false
    t.bigint "purchase_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exhibit_id"], name: "index_to_dos_on_exhibit_id"
    t.index ["merchandise_id"], name: "index_to_dos_on_merchandise_id"
    t.index ["purchase_id"], name: "index_to_dos_on_purchase_id"
    t.index ["user_id"], name: "index_to_dos_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_name_kana", null: false
    t.string "last_name_kana", null: false
    t.string "nickname", null: false
    t.integer "birth_year", null: false
    t.integer "birth_month", null: false
    t.integer "birth_day", null: false
    t.string "phone_number", null: false
    t.text "profile_description", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "balances", "merchandises"
  add_foreign_key "balances", "users"
  add_foreign_key "comments", "merchandises"
  add_foreign_key "comments", "users"
  add_foreign_key "contacts", "merchandises"
  add_foreign_key "contacts", "users"
  add_foreign_key "credit_cards", "users"
  add_foreign_key "dealed_comments", "merchandises"
  add_foreign_key "dealed_comments", "users"
  add_foreign_key "delivery_methods", "deliveries"
  add_foreign_key "evaluations", "purchases"
  add_foreign_key "evaluations", "users"
  add_foreign_key "exhibit_images", "exhibits"
  add_foreign_key "exhibits", "merchandises"
  add_foreign_key "exhibits", "users"
  add_foreign_key "guides", "users"
  add_foreign_key "likes", "merchandises"
  add_foreign_key "likes", "users"
  add_foreign_key "merchandises", "brands"
  add_foreign_key "merchandises", "categories"
  add_foreign_key "merchandises", "deliveries"
  add_foreign_key "notices", "users"
  add_foreign_key "personal_informations", "users"
  add_foreign_key "points", "users"
  add_foreign_key "purchases", "merchandises"
  add_foreign_key "purchases", "users"
  add_foreign_key "remittees", "personal_informations"
  add_foreign_key "to_dos", "exhibits"
  add_foreign_key "to_dos", "merchandises"
  add_foreign_key "to_dos", "purchases"
  add_foreign_key "to_dos", "users"
end
