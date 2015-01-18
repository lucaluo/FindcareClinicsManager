require 'test_helper'

class ListControllerTest < ActionController::TestCase
  test "should get listNew" do
    get :listNew
    assert_response :success
  end

end
