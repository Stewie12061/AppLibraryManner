require "test_helper"

class BaocaocongnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baocaocongno = baocaocongnos(:one)
  end

  test "should get index" do
    get baocaocongnos_url
    assert_response :success
  end

  test "should get new" do
    get new_baocaocongno_url
    assert_response :success
  end

  test "should create baocaocongno" do
    assert_difference('Baocaocongno.count') do
      post baocaocongnos_url, params: { baocaocongno: { email: @baocaocongno.email, makh: @baocaocongno.makh, nocuoi: @baocaocongno.nocuoi, nodau: @baocaocongno.nodau, sdt: @baocaocongno.sdt, sotientra: @baocaocongno.sotientra, tenkh: @baocaocongno.tenkh, tongtienmua: @baocaocongno.tongtienmua } }
    end

    assert_redirected_to baocaocongno_url(Baocaocongno.last)
  end

  test "should show baocaocongno" do
    get baocaocongno_url(@baocaocongno)
    assert_response :success
  end

  test "should get edit" do
    get edit_baocaocongno_url(@baocaocongno)
    assert_response :success
  end

  test "should update baocaocongno" do
    patch baocaocongno_url(@baocaocongno), params: { baocaocongno: { email: @baocaocongno.email, makh: @baocaocongno.makh, nocuoi: @baocaocongno.nocuoi, nodau: @baocaocongno.nodau, sdt: @baocaocongno.sdt, sotientra: @baocaocongno.sotientra, tenkh: @baocaocongno.tenkh, tongtienmua: @baocaocongno.tongtienmua } }
    assert_redirected_to baocaocongno_url(@baocaocongno)
  end

  test "should destroy baocaocongno" do
    assert_difference('Baocaocongno.count', -1) do
      delete baocaocongno_url(@baocaocongno)
    end

    assert_redirected_to baocaocongnos_url
  end
end
