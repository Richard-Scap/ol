require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest

  test "should get all entries from index" do
    get api_businesses_path
    assert_response :success
  end

  test "should get entry from show" do
    get api_business_path(:id)
    assert_response :success
  end
end
