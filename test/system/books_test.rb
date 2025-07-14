require "application_system_test_case"

return if ENV["CI"]

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit new_book_url

    fill_in "Title", with: "Dom Casmurro"
    fill_in "Summary", with: "Um clássico da literatura brasileira"
    check "Virtual"

    select "Romance", from: "Category"
    select "Machado de Assis", from: "Author"
    select "Companhia das Letras", from: "Publisher"

    click_on "Create Book"

    assert_text "Book was successfully created"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Summary", with: @book.summary
    fill_in "Title", with: @book.title
    check "Virtual" if @book.virtual
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
