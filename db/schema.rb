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

ActiveRecord::Schema.define(version: 20220210230422) do

  create_table "generic_tools", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.string   "schematic"
    t.integer  "version"
    t.text     "ratios"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recipe_materials", id: false, force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "stuff_id"
    t.decimal "quantity"
    t.string  "unit"
  end

  create_table "recipe_tools", id: false, force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "stuff_id"
    t.decimal "quantity"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.integer  "stuff_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "source"
    t.string   "demonstration"
  end

  create_table "recipies", force: :cascade do |t|
    t.string   "name"
    t.text     "steps"
    t.integer  "stuff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "order"
    t.text    "text"
    t.string  "image"
    t.string  "demonstration"
  end

  create_table "stuff_sub_types", id: false, force: :cascade do |t|
    t.integer "stuff_id"
    t.integer "sub_type_id"
  end

  create_table "stuffs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "notes"
    t.integer  "parent_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "tools", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.string   "schematic"
    t.text     "recipie"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "generic_tool_id"
    t.string   "demonstration"
  end

  create_table "tools_materials", id: false, force: :cascade do |t|
    t.integer "tool_id"
    t.integer "material_id"
  end

  create_table "tools_tools", id: false, force: :cascade do |t|
    t.integer "tool_id"
    t.integer "prereq_id"
  end

end
