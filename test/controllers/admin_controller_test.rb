require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get indexadmin" do
    get admin_indexadmin_url
    assert_response :success
  end

end
