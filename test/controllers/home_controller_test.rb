require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get userpanel" do
    get :userpanel
    assert_response :success
  end

end
