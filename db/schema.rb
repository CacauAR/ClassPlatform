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

ActiveRecord::Schema.define(version: 2018_08_30_112702) do

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "email"
    t.string "password"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arquives", force: :cascade do |t|
    t.string "path"
    t.integer "classe_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "comment"
    t.index ["classe_id"], name: "index_arquives_on_classe_id"
    t.index ["course_id"], name: "index_arquives_on_course_id"
  end

  create_table "classes", force: :cascade do |t|
    t.integer "course_id"
    t.integer "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "code"
    t.index ["course_id"], name: "index_classes_on_course_id"
    t.index ["professor_id"], name: "index_classes_on_professor_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.integer "registry"
    t.string "name"
    t.string "sex"
    t.string "email"
    t.string "password"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.index ["course_id"], name: "index_professors_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "registry"
    t.string "name"
    t.string "sex"
    t.string "email"
    t.string "password"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.index ["course_id"], name: "index_students_on_course_id"
  end

end
