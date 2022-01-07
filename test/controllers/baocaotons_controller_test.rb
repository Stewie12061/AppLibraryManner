require "test_helper"

class BaocaotonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baocaoton = baocaotons(:one)
  end

  test "should get index" do
    get baocaotons_url
    assert_response :success
  end

  test "should get new" do
    get new_baocaoton_url
    assert_response :success
  end

  test "should create baocaoton" do
    assert_difference('Baocaoton.count') do
      post baocaotons_url, params: { baocaoton: { masach: @baocaoton.masach, namxuatban: @baocaoton.namxuatban, nhaxuatban: @baocaoton.nhaxuatban, phatsinhnhap: @baocaoton.phatsinhnhap, phatsinhxuat: @baocaoton.phatsinhxuat, tensach: @baocaoton.tensach, toncuoi: @baocaoton.toncuoi, tondau: @baocaoton.tondau } }
    end

    assert_redirected_to baocaoton_url(Baocaoton.last)
  end

  test "should show baocaoton" do
    get baocaoton_url(@baocaoton)
    assert_response :success
  end

  test "should get edit" do
    get edit_baocaoton_url(@baocaoton)
    assert_response :success
  end

  test "should update baocaoton" do
    patch baocaoton_url(@baocaoton), params: { baocaoton: { masach: @baocaoton.masach, namxuatban: @baocaoton.namxuatban, nhaxuatban: @baocaoton.nhaxuatban, phatsinhnhap: @baocaoton.phatsinhnhap, phatsinhxuat: @baocaoton.phatsinhxuat, tensach: @baocaoton.tensach, toncuoi: @baocaoton.toncuoi, tondau: @baocaoton.tondau } }
    assert_redirected_to baocaoton_url(@baocaoton)
  end

  test "should destroy baocaoton" do
    assert_difference('Baocaoton.count', -1) do
      delete baocaoton_url(@baocaoton)
    end

    assert_redirected_to baocaotons_url
  end
end
