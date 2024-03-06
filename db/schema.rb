# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_06_144618) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aptitudes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "shoulder"
    t.string "hip"
    t.string "ankle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_aptitudes_on_user_id"
  end

  create_table "exercices", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.integer "time"
    t.integer "repetition"
    t.float "calories"
    t.string "type"
    t.string "description"
    t.bigint "workout_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_exercices_on_workout_id"
  end

  create_table "programs", force: :cascade do |t|
    t.text "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_programs_on_user_id"
  end

  create_table "programs_workouts", force: :cascade do |t|
    t.bigint "program_id"
    t.date "date"
    t.string "feeling"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_programs_workouts_on_program_id"
  end

  create_table "user_weights", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_weights_on_user_id"
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

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aptitudes", "users"
  add_foreign_key "exercices", "workouts"
  add_foreign_key "programs", "users"
  add_foreign_key "programs_workouts", "programs"
  add_foreign_key "user_weights", "users"
end
