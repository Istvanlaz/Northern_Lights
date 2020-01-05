require 'test_helper'

class LandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get landings_show_url
    assert_response :success
  end

  test "should get index" do
    get landings_index_url
    assert_response :success
  end

end
