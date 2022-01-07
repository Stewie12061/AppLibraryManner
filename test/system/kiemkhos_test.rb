require "application_system_test_case"

class KiemkhosTest < ApplicationSystemTestCase
  setup do
    @kiemkho = kiemkhos(:one)
  end

  test "visiting the index" do
    visit kiemkhos_url
    assert_selector "h1", text: "Kiemkhos"
  end

  test "creating a Kiemkho" do
    visit kiemkhos_url
    click_on "New Kiemkho"

    fill_in "Giaban", with: @kiemkho.giaban
    fill_in "Masach", with: @kiemkho.masach
    fill_in "Namxuatban", with: @kiemkho.namxuatban
    fill_in "Nhaxuatban", with: @kiemkho.nhaxuatban
    fill_in "Soluong", with: @kiemkho.soluong
    fill_in "Tacgia", with: @kiemkho.tacgia
    fill_in "Tensach", with: @kiemkho.tensach
    fill_in "Theloai", with: @kiemkho.theloai
    fill_in "Tonkho", with: @kiemkho.tonkho
    click_on "Create Kiemkho"

    assert_text "Kiemkho was successfully created"
    click_on "Back"
  end

  test "updating a Kiemkho" do
    visit kiemkhos_url
    click_on "Edit", match: :first

    fill_in "Giaban", with: @kiemkho.giaban
    fill_in "Masach", with: @kiemkho.masach
    fill_in "Namxuatban", with: @kiemkho.namxuatban
    fill_in "Nhaxuatban", with: @kiemkho.nhaxuatban
    fill_in "Soluong", with: @kiemkho.soluong
    fill_in "Tacgia", with: @kiemkho.tacgia
    fill_in "Tensach", with: @kiemkho.tensach
    fill_in "Theloai", with: @kiemkho.theloai
    fill_in "Tonkho", with: @kiemkho.tonkho
    click_on "Update Kiemkho"

    assert_text "Kiemkho was successfully updated"
    click_on "Back"
  end

  test "destroying a Kiemkho" do
    visit kiemkhos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kiemkho was successfully destroyed"
  end
end
