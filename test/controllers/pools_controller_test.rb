require 'test_helper'

class PoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pools_new_url
    assert_response :success
  end

  test "should get create" do
    get pools_create_url
    assert_response :success
  end

end
