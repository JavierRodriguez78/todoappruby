# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_14_120601) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.boolean "done"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "todo_id"
    t.index ["todo_id"], name: "index_items_on_todo_id"
  end

  create_table "todos", force: :cascade do |t|
    t.string "title"
    t.string "created_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "item_id"
    t.index ["item_id"], name: "index_todos_on_item_id"
  end

  add_foreign_key "items", "todos"
  add_foreign_key "todos", "items"
end
