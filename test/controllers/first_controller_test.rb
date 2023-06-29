require "test_helper"

class FirstControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get first_create_url
    assert_response :success
  end
end
