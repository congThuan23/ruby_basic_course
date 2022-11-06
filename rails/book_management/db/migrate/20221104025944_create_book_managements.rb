class CreateBookManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :book_managements do |t|
      t.string :student_id_265
      t.string :full_name_265
      t.string :class_265
      t.string :book_id_265
      t.string :book_name_265
      t.string :book_author_265
      t.string :book_category_265
      t.string :bm_number_265
      t.string :borrow_date_265
      t.string :back_date_265
      t.string :number_date_265

      t.timestamps
    end
  end
end
