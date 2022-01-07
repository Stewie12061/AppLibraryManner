require "test_helper"

class KiemkhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kiemkho = kiemkhos(:one)
  end

  test "should get index" do
    get kiemkhos_url
    assert_response :success
  end

  test "should get new" do
    get new_kiemkho_url
    assert_response :success
  end

  test "should create kiemkho" do
    assert_difference('Kiemkho.count') do
      post kiemkhos_url, params: { kiemkho: { giaban: @kiemkho.giaban, masach: @kiemkho.masach, namxuatban: @kiemkho.namxuatban, nhaxuatban: @kiemkho.nhaxuatban, soluong: @kiemkho.soluong, tacgia: @kiemkho.tacgia, tensach: @kiemkho.tensach, theloai: @kiemkho.theloai, tonkho: @kiemkho.tonkho } }
    end

    assert_redirected_to kiemkho_url(Kiemkho.last)
  end

  test "should show kiemkho" do
    get kiemkho_url(@kiemkho)
    assert_response :success
  end

  test "should get edit" do
    get edit_kiemkho_url(@kiemkho)
    assert_response :success
  end

  test "should update kiemkho" do
    patch kiemkho_url(@kiemkho), params: { kiemkho: { giaban: @kiemkho.giaban, masach: @kiemkho.masach, namxuatban: @kiemkho.namxuatban, nhaxuatban: @kiemkho.nhaxuatban, soluong: @kiemkho.soluong, tacgia: @kiemkho.tacgia, tensach: @kiemkho.tensach, theloai: @kiemkho.theloai, tonkho: @kiemkho.tonkho } }
    assert_redirected_to kiemkho_url(@kiemkho)
  end

  test "should destroy kiemkho" do
    assert_difference('Kiemkho.count', -1) do
      delete kiemkho_url(@kiemkho)
    end

    assert_redirected_to kiemkhos_url
  end
end
