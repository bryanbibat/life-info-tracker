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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120110034850) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "initial_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "amount"
    t.integer  "source_id"
    t.integer  "destination_id"
    t.datetime "executed_at"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["category_id"], :name => "index_transactions_on_category_id"
  add_index "transactions", ["destination_id"], :name => "index_transactions_on_destination_id"
  add_index "transactions", ["source_id"], :name => "index_transactions_on_source_id"

end
