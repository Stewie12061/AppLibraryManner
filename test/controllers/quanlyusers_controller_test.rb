require "test_helper"

class QuanlyusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quanlyuser = quanlyusers(:one)
  end

  test "should get index" do
    get quanlyusers_url
    assert_response :success
  end

  test "should get new" do
    get new_quanlyuser_url
    assert_response :success
  end

  test "should create quanlyuser" do
    assert_difference('Quanlyuser.count') do
      post quanlyusers_url, params: { quanlyuser: { email: @quanlyuser.email, ngaysinh: @quanlyuser.ngaysinh, ngaytao: @quanlyuser.ngaytao, sdt: @quanlyuser.sdt, tendangnhap: @quanlyuser.tendangnhap, tenuser: @quanlyuser.tenuser, vitri: @quanlyuser.vitri } }
    end

    assert_redirected_to quanlyuser_url(Quanlyuser.last)
  end

  test "should show quanlyuser" do
    get quanlyuser_url(@quanlyuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_quanlyuser_url(@quanlyuser)
    assert_response :success
  end

  test "should update quanlyuser" do
    patch quanlyuser_url(@quanlyuser), params: { quanlyuser: { email: @quanlyuser.email, ngaysinh: @quanlyuser.ngaysinh, ngaytao: @quanlyuser.ngaytao, sdt: @quanlyuser.sdt, tendangnhap: @quanlyuser.tendangnhap, tenuser: @quanlyuser.tenuser, vitri: @quanlyuser.vitri } }
    assert_redirected_to quanlyuser_url(@quanlyuser)
  end

  test "should destroy quanlyuser" do
    assert_difference('Quanlyuser.count', -1) do
      delete quanlyuser_url(@quanlyuser)
    end

    assert_redirected_to quanlyusers_url
  end
end
