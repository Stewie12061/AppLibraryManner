require "test_helper"

class QuanlytkdangnhapControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quanlytkdangnhap_index_url
    assert_response :success
  end
end
