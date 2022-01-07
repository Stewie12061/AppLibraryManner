require "application_system_test_case"

class PhieunhapsTest < ApplicationSystemTestCase
  setup do
    @phieunhap = phieunhaps(:one)
  end

  test "visiting the index" do
    visit phieunhaps_url
    assert_selector "h1", text: "Phieunhaps"
  end

  test "creating a Phieunhap" do
    visit phieunhaps_url
    click_on "New Phieunhap"

    fill_in "Maphieunhap", with: @phieunhap.maphieunhap
    fill_in "Ngaytao", with: @phieunhap.ngaytao
    fill_in "Tongcong", with: @phieunhap.tongcong
    click_on "Create Phieunhap"

    assert_text "Phieunhap was successfully created"
    click_on "Back"
  end

  test "updating a Phieunhap" do
    visit phieunhaps_url
    click_on "Edit", match: :first

    fill_in "Maphieunhap", with: @phieunhap.maphieunhap
    fill_in "Ngaytao", with: @phieunhap.ngaytao
    fill_in "Tongcong", with: @phieunhap.tongcong
    click_on "Update Phieunhap"

    assert_text "Phieunhap was successfully updated"
    click_on "Back"
  end

  test "destroying a Phieunhap" do
    visit phieunhaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phieunhap was successfully destroyed"
  end
end
