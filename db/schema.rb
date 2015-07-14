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

ActiveRecord::Schema.define(version: 20150714202310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_types", force: :cascade do |t|
    t.string   "short_answer"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "answers", force: :cascade do |t|
    t.string   "content"
    t.integer  "answer_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "session_id"
    t.integer  "answer_id"
  end

  create_table "spread_the_words", force: :cascade do |t|
    t.string   "session_id"
    t.string   "url"
    t.string   "why_it_matters_to_me"
    t.string   "what_it_is"
    t.string   "why_it_matters_to_them"
    t.string   "what_im_asking_them_to_do"
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "spread_the_words", ["recipient_id"], name: "index_spread_the_words_on_recipient_id", using: :btree
  add_index "spread_the_words", ["sender_id"], name: "index_spread_the_words_on_sender_id", using: :btree

  create_table "stw_prefills", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.string   "why_it_matters_to_me"
    t.string   "what_it_is"
    t.string   "why_it_matters_to_them"
    t.string   "what_im_asking_them_to_do"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
