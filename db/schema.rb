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

ActiveRecord::Schema.define(version: 2018_04_22_205806) do

  create_table "categories", force: :cascade do |t|
    t.text "categorie_title"
    t.text "categorie_description"
  end

  create_table "goods", force: :cascade do |t|
    t.text "good_title"
    t.text "good_description"
    t.text "good_cat"
    t.decimal "good_price"
    t.boolean "good_sale"
  end

  create_table "orders", force: :cascade do |t|
    t.text "ordser_name"
    t.text "ordser_email"
    t.text "ordser_phone"
    t.text "ordser_goods"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
