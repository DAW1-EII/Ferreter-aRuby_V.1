require 'test_helper'

class HomedospControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homedosp_index_url
    assert_response :success
  end

end
