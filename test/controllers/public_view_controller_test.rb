require 'test_helper'

class PublicViewControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get public_view_home_url
    assert_response :success
  end

end
