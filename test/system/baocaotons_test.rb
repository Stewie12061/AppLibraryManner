require "application_system_test_case"

class BaocaotonsTest < ApplicationSystemTestCase
  setup do
    @baocaoton = baocaotons(:one)
  end

  test "visiting the index" do
    visit baocaotons_url
    assert_selector "h1", text: "Baocaotons"
  end

  test "creating a Baocaoton" do
    visit baocaotons_url
    click_on "New Baocaoton"

    fill_in "Masach", with: @baocaoton.masach
    fill_in "Namxuatban", with: @baocaoton.namxuatban
    fill_in "Nhaxuatban", with: @baocaoton.nhaxuatban
    fill_in "Phatsinhnhap", with: @baocaoton.phatsinhnhap
    fill_in "Phatsinhxuat", with: @baocaoton.phatsinhxuat
    fill_in "Tensach", with: @baocaoton.tensach
    fill_in "Toncuoi", with: @baocaoton.toncuoi
    fill_in "Tondau", with: @baocaoton.tondau
    click_on "Create Baocaoton"

    assert_text "Baocaoton was successfully created"
    click_on "Back"
  end

  test "updating a Baocaoton" do
    visit baocaotons_url
    click_on "Edit", match: :first

    fill_in "Masach", with: @baocaoton.masach
    fill_in "Namxuatban", with: @baocaoton.namxuatban
    fill_in "Nhaxuatban", with: @baocaoton.nhaxuatban
    fill_in "Phatsinhnhap", with: @baocaoton.phatsinhnhap
    fill_in "Phatsinhxuat", with: @baocaoton.phatsinhxuat
    fill_in "Tensach", with: @baocaoton.tensach
    fill_in "Toncuoi", with: @baocaoton.toncuoi
    fill_in "Tondau", with: @baocaoton.tondau
    click_on "Update Baocaoton"

    assert_text "Baocaoton was successfully updated"
    click_on "Back"
  end

  test "destroying a Baocaoton" do
    visit baocaotons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Baocaoton was successfully destroyed"
  end
end
