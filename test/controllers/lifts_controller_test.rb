require 'test_helper'

class LiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lifts_index_url
    assert_response :success
  end

  test "should get show" do
    get lifts_show_url
    assert_response :success
  end

end
