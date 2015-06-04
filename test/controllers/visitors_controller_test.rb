require 'test_helper'

class VisitorsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get collection" do
    get :collection
    assert_response :success
  end

  test "should get garment" do
    get :garment
    assert_response :success
  end

end
