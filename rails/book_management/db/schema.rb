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

ActiveRecord::Schema[7.0].define(version: 2022_11_04_025944) do
  create_table "book_managements", force: :cascade do |t|
    t.string "student_id_265"
    t.string "full_name_265"
    t.string "class_265"
    t.string "book_id_265"
    t.string "book_name_265"
    t.string "book_author_265"
    t.string "book_category_265"
    t.string "bm_number_265"
    t.string "borrow_date_265"
    t.string "back_date_265"
    t.string "number_date_265"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
