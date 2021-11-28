require 'test_helper'

class Admin::WorkersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_workers_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_workers_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_workers_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_workers_edit_url
    assert_response :success
  end

end
