require "test_helper"

class PhieunhapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phieunhap = phieunhaps(:one)
  end

  test "should get index" do
    get phieunhaps_url
    assert_response :success
  end

  test "should get new" do
    get new_phieunhap_url
    assert_response :success
  end

  test "should create phieunhap" do
    assert_difference('Phieunhap.count') do
      post phieunhaps_url, params: { phieunhap: { maphieunhap: @phieunhap.maphieunhap, ngaytao: @phieunhap.ngaytao, tongcong: @phieunhap.tongcong } }
    end

    assert_redirected_to phieunhap_url(Phieunhap.last)
  end

  test "should show phieunhap" do
    get phieunhap_url(@phieunhap)
    assert_response :success
  end

  test "should get edit" do
    get edit_phieunhap_url(@phieunhap)
    assert_response :success
  end

  test "should update phieunhap" do
    patch phieunhap_url(@phieunhap), params: { phieunhap: { maphieunhap: @phieunhap.maphieunhap, ngaytao: @phieunhap.ngaytao, tongcong: @phieunhap.tongcong } }
    assert_redirected_to phieunhap_url(@phieunhap)
  end

  test "should destroy phieunhap" do
    assert_difference('Phieunhap.count', -1) do
      delete phieunhap_url(@phieunhap)
    end

    assert_redirected_to phieunhaps_url
  end
end
