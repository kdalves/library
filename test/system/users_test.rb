require "application_system_test_case"

return if ENV["CI"]

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    check "Active" if @user.active
    fill_in "Cpf", with: @user.cpf
    fill_in "Email", with: @user.email
    fill_in "Name", with: @user.name
    fill_in "Password", with: @user.password
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    check "Active" if @user.active
    fill_in "Cpf", with: @user.cpf
    fill_in "Email", with: @user.email
    fill_in "Name", with: @user.name
    fill_in "Password", with: @user.password
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
