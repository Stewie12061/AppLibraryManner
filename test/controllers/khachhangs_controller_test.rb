require "test_helper"

class KhachhangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @khachhang = khachhangs(:one)
  end

  test "should get index" do
    get khachhangs_url
    assert_response :success
  end

  test "should get new" do
    get new_khachhang_url
    assert_response :success
  end

  test "should create khachhang" do
    assert_difference('Khachhang.count') do
      post khachhangs_url, params: { khachhang: { diachi: @khachhang.diachi, email: @khachhang.email, loaikh: @khachhang.loaikh, makh: @khachhang.makh, ngaysinh: @khachhang.ngaysinh, stt: @khachhang.stt, tenkh: @khachhang.tenkh, tongno: @khachhang.tongno } }
    end

    assert_redirected_to khachhang_url(Khachhang.last)
  end

  test "should show khachhang" do
    get khachhang_url(@khachhang)
    assert_response :success
  end

  test "should get edit" do
    get edit_khachhang_url(@khachhang)
    assert_response :success
  end

  test "should update khachhang" do
    patch khachhang_url(@khachhang), params: { khachhang: { diachi: @khachhang.diachi, email: @khachhang.email, loaikh: @khachhang.loaikh, makh: @khachhang.makh, ngaysinh: @khachhang.ngaysinh, stt: @khachhang.stt, tenkh: @khachhang.tenkh, tongno: @khachhang.tongno } }
    assert_redirected_to khachhang_url(@khachhang)
  end

  test "should destroy khachhang" do
    assert_difference('Khachhang.count', -1) do
      delete khachhang_url(@khachhang)
    end

    assert_redirected_to khachhangs_url
  end
end
