require "test_helper"

class QuydinhControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quydinh_index_url
    assert_response :success
  end
end
