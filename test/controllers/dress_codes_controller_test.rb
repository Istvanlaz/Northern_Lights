require 'test_helper'

class DressCodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dress_codes_index_url
    assert_response :success
  end

  test "should get show" do
    get dress_codes_show_url
    assert_response :success
  end

end
