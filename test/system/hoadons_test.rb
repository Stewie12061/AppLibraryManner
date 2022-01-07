require "application_system_test_case"

class HoadonsTest < ApplicationSystemTestCase
  setup do
    @hoadon = hoadons(:one)
  end

  test "visiting the index" do
    visit hoadons_url
    assert_selector "h1", text: "Hoadons"
  end

  test "creating a Hoadon" do
    visit hoadons_url
    click_on "New Hoadon"

    fill_in "Mahoadon", with: @hoadon.mahoadon
    fill_in "Makh", with: @hoadon.makh
    fill_in "Ngaytao", with: @hoadon.ngaytao
    fill_in "Nguoitao", with: @hoadon.nguoitao
    fill_in "Tenkh", with: @hoadon.tenkh
    fill_in "Tienno", with: @hoadon.tienno
    fill_in "Tientra", with: @hoadon.tientra
    fill_in "Tongcong", with: @hoadon.tongcong
    click_on "Create Hoadon"

    assert_text "Hoadon was successfully created"
    click_on "Back"
  end

  test "updating a Hoadon" do
    visit hoadons_url
    click_on "Edit", match: :first

    fill_in "Mahoadon", with: @hoadon.mahoadon
    fill_in "Makh", with: @hoadon.makh
    fill_in "Ngaytao", with: @hoadon.ngaytao
    fill_in "Nguoitao", with: @hoadon.nguoitao
    fill_in "Tenkh", with: @hoadon.tenkh
    fill_in "Tienno", with: @hoadon.tienno
    fill_in "Tientra", with: @hoadon.tientra
    fill_in "Tongcong", with: @hoadon.tongcong
    click_on "Update Hoadon"

    assert_text "Hoadon was successfully updated"
    click_on "Back"
  end

  test "destroying a Hoadon" do
    visit hoadons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hoadon was successfully destroyed"
  end
end
