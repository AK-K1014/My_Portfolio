require "test_helper"

class TopLoggedlnControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get top_loggedln_new_url
    assert_response :success
  end
end
