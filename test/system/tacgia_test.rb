require "application_system_test_case"

class TacgiaTest < ApplicationSystemTestCase
  setup do
    @tacgium = tacgia(:one)
  end

  test "visiting the index" do
    visit tacgia_url
    assert_selector "h1", text: "Tacgia"
  end

  test "creating a Tacgium" do
    visit tacgia_url
    click_on "New Tacgium"

    fill_in "Namsinh", with: @tacgium.namsinh
    fill_in "Tentacgia", with: @tacgium.tentacgia
    click_on "Create Tacgium"

    assert_text "Tacgium was successfully created"
    click_on "Back"
  end

  test "updating a Tacgium" do
    visit tacgia_url
    click_on "Edit", match: :first

    fill_in "Namsinh", with: @tacgium.namsinh
    fill_in "Tentacgia", with: @tacgium.tentacgia
    click_on "Update Tacgium"

    assert_text "Tacgium was successfully updated"
    click_on "Back"
  end

  test "destroying a Tacgium" do
    visit tacgia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tacgium was successfully destroyed"
  end
end
