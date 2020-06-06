require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get stocks_tracking" do
    get users_stocks_tracking_url
    assert_response :success
  end
end
