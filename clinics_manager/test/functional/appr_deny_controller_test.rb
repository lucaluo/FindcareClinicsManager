require 'test_helper'

class ApprDenyControllerTest < ActionController::TestCase
  test "should get approve" do
    get :approve
    assert_response :success
  end

  test "should get deny" do
    assert_difference('ClinicInsert.where()')
    post :deny, transc_id: 1
    assert_response :success
  end

end
