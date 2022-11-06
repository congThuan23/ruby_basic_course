require "application_system_test_case"

class BookManagementsTest < ApplicationSystemTestCase
  setup do
    @book_management = book_managements(:one)
  end

  test "visiting the index" do
    visit book_managements_url
    assert_selector "h1", text: "Book managements"
  end

  test "should create book management" do
    visit book_managements_url
    click_on "New book management"

    fill_in "Back date 265", with: @book_management.back_date_265
    fill_in "Bm number 265", with: @book_management.bm_number_265
    fill_in "Book author 265", with: @book_management.book_author_265
    fill_in "Book category 265", with: @book_management.book_category_265
    fill_in "Book id 265", with: @book_management.book_id_265
    fill_in "Book name 265", with: @book_management.book_name_265
    fill_in "Borrow date 265", with: @book_management.borrow_date_265
    fill_in "Class 265", with: @book_management.class_265
    fill_in "Full name 265", with: @book_management.full_name_265
    fill_in "Number date 265", with: @book_management.number_date_265
    fill_in "Student id 265", with: @book_management.student_id_265
    click_on "Create Book management"

    assert_text "Book management was successfully created"
    click_on "Back"
  end

  test "should update Book management" do
    visit book_management_url(@book_management)
    click_on "Edit this book management", match: :first

    fill_in "Back date 265", with: @book_management.back_date_265
    fill_in "Bm number 265", with: @book_management.bm_number_265
    fill_in "Book author 265", with: @book_management.book_author_265
    fill_in "Book category 265", with: @book_management.book_category_265
    fill_in "Book id 265", with: @book_management.book_id_265
    fill_in "Book name 265", with: @book_management.book_name_265
    fill_in "Borrow date 265", with: @book_management.borrow_date_265
    fill_in "Class 265", with: @book_management.class_265
    fill_in "Full name 265", with: @book_management.full_name_265
    fill_in "Number date 265", with: @book_management.number_date_265
    fill_in "Student id 265", with: @book_management.student_id_265
    click_on "Update Book management"

    assert_text "Book management was successfully updated"
    click_on "Back"
  end

  test "should destroy Book management" do
    visit book_management_url(@book_management)
    click_on "Destroy this book management", match: :first

    assert_text "Book management was successfully destroyed"
  end
end
