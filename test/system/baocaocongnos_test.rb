require "application_system_test_case"

class BaocaocongnosTest < ApplicationSystemTestCase
  setup do
    @baocaocongno = baocaocongnos(:one)
  end

  test "visiting the index" do
    visit baocaocongnos_url
    assert_selector "h1", text: "Baocaocongnos"
  end

  test "creating a Baocaocongno" do
    visit baocaocongnos_url
    click_on "New Baocaocongno"

    fill_in "Email", with: @baocaocongno.email
    fill_in "Makh", with: @baocaocongno.makh
    fill_in "Nocuoi", with: @baocaocongno.nocuoi
    fill_in "Nodau", with: @baocaocongno.nodau
    fill_in "Sdt", with: @baocaocongno.sdt
    fill_in "Sotientra", with: @baocaocongno.sotientra
    fill_in "Tenkh", with: @baocaocongno.tenkh
    fill_in "Tongtienmua", with: @baocaocongno.tongtienmua
    click_on "Create Baocaocongno"

    assert_text "Baocaocongno was successfully created"
    click_on "Back"
  end

  test "updating a Baocaocongno" do
    visit baocaocongnos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @baocaocongno.email
    fill_in "Makh", with: @baocaocongno.makh
    fill_in "Nocuoi", with: @baocaocongno.nocuoi
    fill_in "Nodau", with: @baocaocongno.nodau
    fill_in "Sdt", with: @baocaocongno.sdt
    fill_in "Sotientra", with: @baocaocongno.sotientra
    fill_in "Tenkh", with: @baocaocongno.tenkh
    fill_in "Tongtienmua", with: @baocaocongno.tongtienmua
    click_on "Update Baocaocongno"

    assert_text "Baocaocongno was successfully updated"
    click_on "Back"
  end

  test "destroying a Baocaocongno" do
    visit baocaocongnos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Baocaocongno was successfully destroyed"
  end
end
