require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @business = businesses(:biz_one)
  end

  test "should get index" do
    get api_businesses_path
    assert_response :success
  end

  test "should show a business" do
    get api_business_path(:id)
    assert_equal "Yundt-Flatley", @business.name
    assert_response :success
  end
end
