require 'test_helper'

class Public::VenuesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_venues_index_url
    assert_response :success
  end

  test "should get show" do
    get public_venues_show_url
    assert_response :success
  end

end
