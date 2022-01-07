require "test_helper"

class PhieuthusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phieuthu = phieuthus(:one)
  end

  test "should get index" do
    get phieuthus_url
    assert_response :success
  end

  test "should get new" do
    get new_phieuthu_url
    assert_response :success
  end

  test "should create phieuthu" do
    assert_difference('Phieuthu.count') do
      post phieuthus_url, params: { phieuthu: { makh: @phieuthu.makh, maphieuthu: @phieuthu.maphieuthu, ngaytao: @phieuthu.ngaytao, tenkh: @phieuthu.tenkh, tongcong: @phieuthu.tongcong } }
    end

    assert_redirected_to phieuthu_url(Phieuthu.last)
  end

  test "should show phieuthu" do
    get phieuthu_url(@phieuthu)
    assert_response :success
  end

  test "should get edit" do
    get edit_phieuthu_url(@phieuthu)
    assert_response :success
  end

  test "should update phieuthu" do
    patch phieuthu_url(@phieuthu), params: { phieuthu: { makh: @phieuthu.makh, maphieuthu: @phieuthu.maphieuthu, ngaytao: @phieuthu.ngaytao, tenkh: @phieuthu.tenkh, tongcong: @phieuthu.tongcong } }
    assert_redirected_to phieuthu_url(@phieuthu)
  end

  test "should destroy phieuthu" do
    assert_difference('Phieuthu.count', -1) do
      delete phieuthu_url(@phieuthu)
    end

    assert_redirected_to phieuthus_url
  end
end
