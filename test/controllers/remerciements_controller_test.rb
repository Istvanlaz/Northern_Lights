require 'test_helper'

class RemerciementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get remerciements_index_url
    assert_response :success
  end

  test "should get show" do
    get remerciements_show_url
    assert_response :success
  end

end
