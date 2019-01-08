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

ActiveRecord::Schema.define(version: 2019_01_08_215533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["course_id"], name: "index_assignments_on_course_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "batches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_batches_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.bigint "teacher_id"
    t.bigint "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["batch_id"], name: "index_courses_on_batch_id"
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unique_membership_index"
    t.bigint "user_id"
    t.index ["course_id", "student_id"], name: "index_memberships_on_course_id_and_student_id", unique: true
    t.index ["course_id"], name: "index_memberships_on_course_id"
    t.index ["student_id"], name: "index_memberships_on_student_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["batch_id"], name: "index_students_on_batch_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignments", "courses"
  add_foreign_key "assignments", "users"
  add_foreign_key "batches", "users"
  add_foreign_key "courses", "batches"
  add_foreign_key "courses", "teachers"
  add_foreign_key "courses", "users"
  add_foreign_key "memberships", "courses"
  add_foreign_key "memberships", "students"
  add_foreign_key "memberships", "users"
  add_foreign_key "students", "batches"
  add_foreign_key "students", "users"
  add_foreign_key "teachers", "users"
end
