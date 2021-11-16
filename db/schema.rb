# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_15_205004) do

  create_table "bills", force: :cascade do |t|
    t.string "bill_name"
    t.integer "bill_amount"
    t.string "category_name"
    t.integer "wallet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "occupation"
    t.boolean "logged_in"
  end

  create_table "wallets", force: :cascade do |t|
    t.string "wallet_name"
    t.integer "user_id"
  end

end
