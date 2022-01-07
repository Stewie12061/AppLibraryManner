require "application_system_test_case"

class PhieuthusTest < ApplicationSystemTestCase
  setup do
    @phieuthu = phieuthus(:one)
  end

  test "visiting the index" do
    visit phieuthus_url
    assert_selector "h1", text: "Phieuthus"
  end

  test "creating a Phieuthu" do
    visit phieuthus_url
    click_on "New Phieuthu"

    fill_in "Makh", with: @phieuthu.makh
    fill_in "Maphieuthu", with: @phieuthu.maphieuthu
    fill_in "Ngaytao", with: @phieuthu.ngaytao
    fill_in "Tenkh", with: @phieuthu.tenkh
    fill_in "Tongcong", with: @phieuthu.tongcong
    click_on "Create Phieuthu"

    assert_text "Phieuthu was successfully created"
    click_on "Back"
  end

  test "updating a Phieuthu" do
    visit phieuthus_url
    click_on "Edit", match: :first

    fill_in "Makh", with: @phieuthu.makh
    fill_in "Maphieuthu", with: @phieuthu.maphieuthu
    fill_in "Ngaytao", with: @phieuthu.ngaytao
    fill_in "Tenkh", with: @phieuthu.tenkh
    fill_in "Tongcong", with: @phieuthu.tongcong
    click_on "Update Phieuthu"

    assert_text "Phieuthu was successfully updated"
    click_on "Back"
  end

  test "destroying a Phieuthu" do
    visit phieuthus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phieuthu was successfully destroyed"
  end
end
