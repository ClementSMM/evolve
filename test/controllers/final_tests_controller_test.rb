require 'test_helper'

class FinalTestsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get final_tests_show_url
    assert_response :success
  end

end
