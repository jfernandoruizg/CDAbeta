require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get indexhome" do
    get home_indexhome_url
    assert_response :success
  end

end
