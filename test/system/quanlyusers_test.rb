require "application_system_test_case"

class QuanlyusersTest < ApplicationSystemTestCase
  setup do
    @quanlyuser = quanlyusers(:one)
  end

  test "visiting the index" do
    visit quanlyusers_url
    assert_selector "h1", text: "Quanlyusers"
  end

  test "creating a Quanlyuser" do
    visit quanlyusers_url
    click_on "New Quanlyuser"

    fill_in "Email", with: @quanlyuser.email
    fill_in "Ngaysinh", with: @quanlyuser.ngaysinh
    fill_in "Ngaytao", with: @quanlyuser.ngaytao
    fill_in "Sdt", with: @quanlyuser.sdt
    fill_in "Tendangnhap", with: @quanlyuser.tendangnhap
    fill_in "Tenuser", with: @quanlyuser.tenuser
    fill_in "Vitri", with: @quanlyuser.vitri
    click_on "Create Quanlyuser"

    assert_text "Quanlyuser was successfully created"
    click_on "Back"
  end

  test "updating a Quanlyuser" do
    visit quanlyusers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @quanlyuser.email
    fill_in "Ngaysinh", with: @quanlyuser.ngaysinh
    fill_in "Ngaytao", with: @quanlyuser.ngaytao
    fill_in "Sdt", with: @quanlyuser.sdt
    fill_in "Tendangnhap", with: @quanlyuser.tendangnhap
    fill_in "Tenuser", with: @quanlyuser.tenuser
    fill_in "Vitri", with: @quanlyuser.vitri
    click_on "Update Quanlyuser"

    assert_text "Quanlyuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Quanlyuser" do
    visit quanlyusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quanlyuser was successfully destroyed"
  end
end
