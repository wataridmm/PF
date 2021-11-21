require 'test_helper'

class Admin::ItemStocksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_item_stocks_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_item_stocks_show_url
    assert_response :success
  end

end
