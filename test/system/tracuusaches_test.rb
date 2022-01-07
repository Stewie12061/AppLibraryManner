require "application_system_test_case"

class TracuusachesTest < ApplicationSystemTestCase
  setup do
    @tracuusach = tracuusaches(:one)
  end

  test "visiting the index" do
    visit tracuusaches_url
    assert_selector "h1", text: "Tracuusaches"
  end

  test "creating a Tracuusach" do
    visit tracuusaches_url
    click_on "New Tracuusach"

    fill_in "Giatien", with: @tracuusach.giatien
    fill_in "Masach", with: @tracuusach.masach
    fill_in "Namxuatban", with: @tracuusach.namxuatban
    fill_in "Nhaxuatban", with: @tracuusach.nhaxuatban
    fill_in "Soluong", with: @tracuusach.soluong
    fill_in "Tacgia", with: @tracuusach.tacgia
    fill_in "Tensach", with: @tracuusach.tensach
    fill_in "Theloai", with: @tracuusach.theloai
    click_on "Create Tracuusach"

    assert_text "Tracuusach was successfully created"
    click_on "Back"
  end

  test "updating a Tracuusach" do
    visit tracuusaches_url
    click_on "Edit", match: :first

    fill_in "Giatien", with: @tracuusach.giatien
    fill_in "Masach", with: @tracuusach.masach
    fill_in "Namxuatban", with: @tracuusach.namxuatban
    fill_in "Nhaxuatban", with: @tracuusach.nhaxuatban
    fill_in "Soluong", with: @tracuusach.soluong
    fill_in "Tacgia", with: @tracuusach.tacgia
    fill_in "Tensach", with: @tracuusach.tensach
    fill_in "Theloai", with: @tracuusach.theloai
    click_on "Update Tracuusach"

    assert_text "Tracuusach was successfully updated"
    click_on "Back"
  end

  test "destroying a Tracuusach" do
    visit tracuusaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tracuusach was successfully destroyed"
  end
end
