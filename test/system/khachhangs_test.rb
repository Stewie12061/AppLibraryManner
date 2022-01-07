require "application_system_test_case"

class KhachhangsTest < ApplicationSystemTestCase
  setup do
    @khachhang = khachhangs(:one)
  end

  test "visiting the index" do
    visit khachhangs_url
    assert_selector "h1", text: "Khachhangs"
  end

  test "creating a Khachhang" do
    visit khachhangs_url
    click_on "New Khachhang"

    fill_in "Diachi", with: @khachhang.diachi
    fill_in "Email", with: @khachhang.email
    fill_in "Loaikh", with: @khachhang.loaikh
    fill_in "Makh", with: @khachhang.makh
    fill_in "Ngaysinh", with: @khachhang.ngaysinh
    fill_in "Stt", with: @khachhang.stt
    fill_in "Tenkh", with: @khachhang.tenkh
    fill_in "Tongno", with: @khachhang.tongno
    click_on "Create Khachhang"

    assert_text "Khachhang was successfully created"
    click_on "Back"
  end

  test "updating a Khachhang" do
    visit khachhangs_url
    click_on "Edit", match: :first

    fill_in "Diachi", with: @khachhang.diachi
    fill_in "Email", with: @khachhang.email
    fill_in "Loaikh", with: @khachhang.loaikh
    fill_in "Makh", with: @khachhang.makh
    fill_in "Ngaysinh", with: @khachhang.ngaysinh
    fill_in "Stt", with: @khachhang.stt
    fill_in "Tenkh", with: @khachhang.tenkh
    fill_in "Tongno", with: @khachhang.tongno
    click_on "Update Khachhang"

    assert_text "Khachhang was successfully updated"
    click_on "Back"
  end

  test "destroying a Khachhang" do
    visit khachhangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Khachhang was successfully destroyed"
  end
end
