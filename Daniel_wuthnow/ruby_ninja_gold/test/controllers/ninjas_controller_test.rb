require 'test_helper'

class NinjasControllerTest < ActionController::TestCase
  test "should get gold" do
    get :gold
    assert_response :success
  end

end
