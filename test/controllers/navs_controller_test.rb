require 'test_helper'

class NavsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

end
