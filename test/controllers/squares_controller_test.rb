require 'test_helper'

class SquaresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get squares_new_url
    assert_response :success
  end

end
