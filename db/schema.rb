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

ActiveRecord::Schema.define(version: 2019_10_24_182123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.string "description"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.boolean "isComplete"
    t.integer "course_id"
    t.date "due_date"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.time "start_time"
    t.time "end_time"
    t.date "start_date"
    t.date "end_date"
    t.integer "user_id"
    t.string "icon"
    t.string "student_ids", default: [], array: true
    t.string "pending_student_ids", default: [], array: true
    t.string "description"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id"
    t.integer "assignment_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "school_id"
    t.string "gender"
    t.boolean "isTeacher"
  end

end
