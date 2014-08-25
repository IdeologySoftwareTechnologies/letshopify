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

ActiveRecord::Schema.define(version: 20140825111941) do

  create_table "productcategories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "productcategory_hierarchies", force: true do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "productcategory_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "productcategory_anc_desc_udx", unique: true
  add_index "productcategory_hierarchies", ["descendant_id"], name: "productcategory_desc_idx"

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.integer  "productcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["productcategory_id"], name: "index_products_on_productcategory_id"

end
