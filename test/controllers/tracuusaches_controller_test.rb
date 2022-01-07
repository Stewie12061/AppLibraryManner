require "test_helper"

class TracuusachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracuusach = tracuusaches(:one)
  end

  test "should get index" do
    get tracuusaches_url
    assert_response :success
  end

  test "should get new" do
    get new_tracuusach_url
    assert_response :success
  end

  test "should create tracuusach" do
    assert_difference('Tracuusach.count') do
      post tracuusaches_url, params: { tracuusach: { giatien: @tracuusach.giatien, masach: @tracuusach.masach, namxuatban: @tracuusach.namxuatban, nhaxuatban: @tracuusach.nhaxuatban, soluong: @tracuusach.soluong, tacgia: @tracuusach.tacgia, tensach: @tracuusach.tensach, theloai: @tracuusach.theloai } }
    end

    assert_redirected_to tracuusach_url(Tracuusach.last)
  end

  test "should show tracuusach" do
    get tracuusach_url(@tracuusach)
    assert_response :success
  end

  test "should get edit" do
    get edit_tracuusach_url(@tracuusach)
    assert_response :success
  end

  test "should update tracuusach" do
    patch tracuusach_url(@tracuusach), params: { tracuusach: { giatien: @tracuusach.giatien, masach: @tracuusach.masach, namxuatban: @tracuusach.namxuatban, nhaxuatban: @tracuusach.nhaxuatban, soluong: @tracuusach.soluong, tacgia: @tracuusach.tacgia, tensach: @tracuusach.tensach, theloai: @tracuusach.theloai } }
    assert_redirected_to tracuusach_url(@tracuusach)
  end

  test "should destroy tracuusach" do
    assert_difference('Tracuusach.count', -1) do
      delete tracuusach_url(@tracuusach)
    end

    assert_redirected_to tracuusaches_url
  end
end
