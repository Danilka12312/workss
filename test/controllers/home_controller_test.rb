require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get chelyabinsk" do
    get home_chelyabinsk_url
    assert_response :success
  end
end
