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

ActiveRecord::Schema.define(version: 2020_12_09_151920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.text "content"
    t.boolean "correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "host_id"
    t.bigint "guest_id"
    t.index ["guest_id"], name: "index_chatrooms_on_guest_id"
    t.index ["host_id"], name: "index_chatrooms_on_host_id"
  end

  create_table "final_test_answers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "final_test_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["final_test_id"], name: "index_final_test_answers_on_final_test_id"
    t.index ["user_id"], name: "index_final_test_answers_on_user_id"
  end

  create_table "final_tests", force: :cascade do |t|
    t.bigint "program_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.text "objectifs"
    t.index ["program_id"], name: "index_final_tests_on_program_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.bigint "program_id", null: false
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.index ["program_id"], name: "index_lessons_on_program_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.text "description"
    t.string "title"
    t.integer "unlock_program"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "quiz_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "number"
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizz_scores", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "quiz_id", null: false
    t.integer "number_correct_answer", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_quizz_scores_on_quiz_id"
    t.index ["user_id"], name: "index_quizz_scores_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_quizzes_on_lesson_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "program_id", null: false
    t.bigint "user_id", null: false
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["program_id"], name: "index_reviews_on_program_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "title"
    t.bigint "lesson_id", null: false
    t.integer "number"
    t.string "url"
    t.string "media_type"
    t.text "text_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_steps_on_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.integer "level"
    t.integer "xp"
    t.integer "days_streak"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_programs", force: :cascade do |t|
    t.string "status"
    t.integer "last_lesson_id"
    t.integer "last_step_id"
    t.bigint "user_id", null: false
    t.bigint "program_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "completion", default: 0
    t.index ["program_id"], name: "index_users_programs_on_program_id"
    t.index ["user_id"], name: "index_users_programs_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "questions"
  add_foreign_key "chatrooms", "users", column: "guest_id"
  add_foreign_key "chatrooms", "users", column: "host_id"
  add_foreign_key "final_test_answers", "final_tests"
  add_foreign_key "final_test_answers", "users"
  add_foreign_key "final_tests", "programs"
  add_foreign_key "lessons", "programs"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "quizz_scores", "quizzes"
  add_foreign_key "quizz_scores", "users"
  add_foreign_key "quizzes", "lessons"
  add_foreign_key "reviews", "programs"
  add_foreign_key "reviews", "users"
  add_foreign_key "steps", "lessons"
  add_foreign_key "users_programs", "programs"
  add_foreign_key "users_programs", "users"
end
