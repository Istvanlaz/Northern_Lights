require 'test_helper'

class RepondreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repondre_index_url
    assert_response :success
  end

  test "should get show" do
    get repondre_show_url
    assert_response :success
  end

end
