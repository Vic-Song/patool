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

ActiveRecord::Schema.define(version: 20170708075229) do

  create_table "answers", force: :cascade do |t|
    t.text     "title"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "others", force: :cascade do |t|
    t.string   "title"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "others", ["question_id"], name: "index_others_on_question_id"

  create_table "papers", force: :cascade do |t|
    t.string   "title"
    t.string   "authorName1"
    t.string   "authorName2"
    t.string   "authorName3"
    t.string   "authorName4"
    t.string   "authorName5"
    t.string   "comAuthor"
    t.text     "comAddr"
    t.string   "year"
    t.string   "journal"
    t.integer  "survey_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "papers", ["survey_id"], name: "index_papers_on_survey_id"

  create_table "questions", force: :cascade do |t|
    t.text     "title"
    t.integer  "style"
    t.integer  "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["survey_id"], name: "index_questions_on_survey_id"

  create_table "results", force: :cascade do |t|
    t.string   "one"
    t.string   "two"
    t.string   "three"
    t.string   "four"
    t.string   "five"
    t.string   "six"
    t.string   "seven"
    t.string   "eight"
    t.string   "night"
    t.string   "ten"
    t.string   "eleven"
    t.string   "twelve"
    t.string   "thirteen"
    t.string   "fourteen"
    t.string   "fifteen"
    t.string   "sixteen"
    t.string   "seventeen"
    t.string   "eighteen"
    t.string   "nighteen"
    t.string   "twenty"
    t.string   "twentyone"
    t.string   "twentytwo"
    t.string   "twentythree"
    t.string   "twentyfour"
    t.string   "twentyfive"
    t.string   "twentysix"
    t.string   "twentyseven"
    t.string   "twentyeight"
    t.string   "twentynine"
    t.string   "thirty"
    t.string   "thirtyone"
    t.string   "thirtytwo"
    t.string   "thirtythree"
    t.string   "thirtyfour"
    t.string   "thirtyfive"
    t.string   "thirtysix"
    t.string   "thirtyseven"
    t.string   "thirtyeight"
    t.string   "thirtynine"
    t.string   "fourty"
    t.string   "fourtyone"
    t.string   "fourtytwo"
    t.string   "fourtythree"
    t.string   "fourtyfour"
    t.string   "fourtyfive"
    t.string   "fourtysix"
    t.string   "fourtyseven"
    t.string   "fourtyeight"
    t.string   "fourtynine"
    t.string   "fifty"
    t.integer  "paper_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "results", ["paper_id"], name: "index_results_on_paper_id"

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
