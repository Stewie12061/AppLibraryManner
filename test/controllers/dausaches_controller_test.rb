require "test_helper"

class DausachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dausach = dausaches(:one)
  end

  test "should get index" do
    get dausaches_url
    assert_response :success
  end

  test "should get new" do
    get new_dausach_url
    assert_response :success
  end

  test "should create dausach" do
    assert_difference('Dausach.count') do
      post dausaches_url, params: { dausach: { tacgia: @dausach.tacgia, tensach: @dausach.tensach, theloai: @dausach.theloai } }
    end

    assert_redirected_to dausach_url(Dausach.last)
  end

  test "should show dausach" do
    get dausach_url(@dausach)
    assert_response :success
  end

  test "should get edit" do
    get edit_dausach_url(@dausach)
    assert_response :success
  end

  test "should update dausach" do
    patch dausach_url(@dausach), params: { dausach: { tacgia: @dausach.tacgia, tensach: @dausach.tensach, theloai: @dausach.theloai } }
    assert_redirected_to dausach_url(@dausach)
  end

  test "should destroy dausach" do
    assert_difference('Dausach.count', -1) do
      delete dausach_url(@dausach)
    end

    assert_redirected_to dausaches_url
  end
end
