require "test_helper"

class BookManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_management = book_managements(:one)
  end

  test "should get index" do
    get book_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_book_management_url
    assert_response :success
  end

  test "should create book_management" do
    assert_difference("BookManagement.count") do
      post book_managements_url, params: { book_management: { back_date_265: @book_management.back_date_265, bm_number_265: @book_management.bm_number_265, book_author_265: @book_management.book_author_265, book_category_265: @book_management.book_category_265, book_id_265: @book_management.book_id_265, book_name_265: @book_management.book_name_265, borrow_date_265: @book_management.borrow_date_265, class_265: @book_management.class_265, full_name_265: @book_management.full_name_265, number_date_265: @book_management.number_date_265, student_id_265: @book_management.student_id_265 } }
    end

    assert_redirected_to book_management_url(BookManagement.last)
  end

  test "should show book_management" do
    get book_management_url(@book_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_management_url(@book_management)
    assert_response :success
  end

  test "should update book_management" do
    patch book_management_url(@book_management), params: { book_management: { back_date_265: @book_management.back_date_265, bm_number_265: @book_management.bm_number_265, book_author_265: @book_management.book_author_265, book_category_265: @book_management.book_category_265, book_id_265: @book_management.book_id_265, book_name_265: @book_management.book_name_265, borrow_date_265: @book_management.borrow_date_265, class_265: @book_management.class_265, full_name_265: @book_management.full_name_265, number_date_265: @book_management.number_date_265, student_id_265: @book_management.student_id_265 } }
    assert_redirected_to book_management_url(@book_management)
  end

  test "should destroy book_management" do
    assert_difference("BookManagement.count", -1) do
      delete book_management_url(@book_management)
    end

    assert_redirected_to book_managements_url
  end
end
