require "test_helper"

class HoadonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoadon = hoadons(:one)
  end

  test "should get index" do
    get hoadons_url
    assert_response :success
  end

  test "should get new" do
    get new_hoadon_url
    assert_response :success
  end

  test "should create hoadon" do
    assert_difference('Hoadon.count') do
      post hoadons_url, params: { hoadon: { mahoadon: @hoadon.mahoadon, makh: @hoadon.makh, ngaytao: @hoadon.ngaytao, nguoitao: @hoadon.nguoitao, tenkh: @hoadon.tenkh, tienno: @hoadon.tienno, tientra: @hoadon.tientra, tongcong: @hoadon.tongcong } }
    end

    assert_redirected_to hoadon_url(Hoadon.last)
  end

  test "should show hoadon" do
    get hoadon_url(@hoadon)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoadon_url(@hoadon)
    assert_response :success
  end

  test "should update hoadon" do
    patch hoadon_url(@hoadon), params: { hoadon: { mahoadon: @hoadon.mahoadon, makh: @hoadon.makh, ngaytao: @hoadon.ngaytao, nguoitao: @hoadon.nguoitao, tenkh: @hoadon.tenkh, tienno: @hoadon.tienno, tientra: @hoadon.tientra, tongcong: @hoadon.tongcong } }
    assert_redirected_to hoadon_url(@hoadon)
  end

  test "should destroy hoadon" do
    assert_difference('Hoadon.count', -1) do
      delete hoadon_url(@hoadon)
    end

    assert_redirected_to hoadons_url
  end
end
