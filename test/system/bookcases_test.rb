require "application_system_test_case"

return if ENV["CI"]

class BookcasesTest < ApplicationSystemTestCase
  setup do
    @bookcase = bookcases(:one)
  end

  test "visiting the index" do
    visit bookcases_url
    assert_selector "h1", text: "Bookcases"
  end

  test "should create bookcase" do
    visit bookcases_url
    click_on "New bookcase"

    fill_in "Name", with: @bookcase.name
    fill_in "Status", with: @bookcase.status
    check "Virtual" if @bookcase.virtual
    click_on "Create Bookcase"

    assert_text "Bookcase was successfully created"
    click_on "Back"
  end

  test "should update Bookcase" do
    visit bookcase_url(@bookcase)
    click_on "Edit this bookcase", match: :first

    fill_in "Name", with: @bookcase.name
    fill_in "Status", with: @bookcase.status
    check "Virtual" if @bookcase.virtual
    click_on "Update Bookcase"

    assert_text "Bookcase was successfully updated"
    click_on "Back"
  end

  test "should destroy Bookcase" do
    visit bookcase_url(@bookcase)
    click_on "Destroy this bookcase", match: :first

    assert_text "Bookcase was successfully destroyed"
  end
end
