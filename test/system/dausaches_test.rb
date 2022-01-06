require "application_system_test_case"

class DausachesTest < ApplicationSystemTestCase
  setup do
    @dausach = dausaches(:one)
  end

  test "visiting the index" do
    visit dausaches_url
    assert_selector "h1", text: "Dausaches"
  end

  test "creating a Dausach" do
    visit dausaches_url
    click_on "New Dausach"

    fill_in "Tacgia", with: @dausach.tacgia
    fill_in "Tensach", with: @dausach.tensach
    fill_in "Theloai", with: @dausach.theloai
    click_on "Create Dausach"

    assert_text "Dausach was successfully created"
    click_on "Back"
  end

  test "updating a Dausach" do
    visit dausaches_url
    click_on "Edit", match: :first

    fill_in "Tacgia", with: @dausach.tacgia
    fill_in "Tensach", with: @dausach.tensach
    fill_in "Theloai", with: @dausach.theloai
    click_on "Update Dausach"

    assert_text "Dausach was successfully updated"
    click_on "Back"
  end

  test "destroying a Dausach" do
    visit dausaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dausach was successfully destroyed"
  end
end
